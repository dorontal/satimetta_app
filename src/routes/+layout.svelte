<script lang="ts">
	import '../app.css';
	import { page } from '$app/state';
	import { Navigation } from '@skeletonlabs/skeleton-svelte';
	import { onMount } from 'svelte';
	import IconMenu from 'lucide-svelte/icons/menu';
	import IconSunMoon from 'lucide-svelte/icons/sun-moon';
	import IconHome from 'lucide-svelte/icons/home';
	import IconInfo from 'lucide-svelte/icons/info';
	import IconLink from 'lucide-svelte/icons/link';

	let darkMode = $state(false);

	const setBodyDarkMode = (darkMode: boolean) => {
		if (darkMode) {
			document.documentElement.classList.add('dark');
		} else {
			document.documentElement.classList.remove('dark');
		}
	};

	onMount(() => {
		const storedDarkMode = localStorage.getItem('darkMode');
		if (!storedDarkMode) {
			darkMode = window.matchMedia('(prefers-color-scheme: dark)').matches;
		} else {
			darkMode = storedDarkMode === 'true';
		}
		setBodyDarkMode(darkMode);
	});

	function toggleDarkMode() {
		darkMode = !darkMode;
		localStorage.setItem('darkMode', JSON.stringify(darkMode, null, 2));
		setBodyDarkMode(darkMode);
	}

	let isSidebarOpen = $state(false); // Track the state of the sidebar (open/closed)

	// Function to toggle the sidebar state
	const toggleSidebar = () => {
		isSidebarOpen = !isSidebarOpen;
	};

	let { children } = $props();
</script>

<svelte:head>
	<title>Mindfulness Cultivation</title>
</svelte:head>

<div class="flex h-screen flex-col">
	<!-- Header -->
	<header
		class="sticky top-0 z-10 backdrop-blur-md bg-surface-200-800"
		role="heading"
		aria-level="1"
	>
		<div class="flex h-14 items-center p-2">
			<button onclick={toggleSidebar} type="button" class="btn-icon ml-1 md:hidden">
				<IconMenu size="24" />
			</button>
			<div class="flex flex-auto justify-center">
				<span class="h6">Mindfulness Cultivation</span>
			</div>
			<button onclick={toggleDarkMode} type="button" class="btn-icon ml-auto mr-3">
				<IconSunMoon size="24" />
			</button>
		</div>
	</header>

	<div class="flex flex-1 overflow-hidden">
		<!-- Sidebar: Always visible on larger screens, toggled on mobile -->
		<aside
			class="p-0 bg-surface-100-900 md:block {isSidebarOpen
				? 'fixed left-0 top-14 z-20 w-64'
				: 'hidden'} md:relative"
		>
			<!-- div below to put nav rails on top & prevent them from being vertically centered-->
			<div>
				<Navigation.Rail expanded>
					{#snippet tiles()}
						<Navigation.Tile
							id="0"
							labelExpanded="Home"
							href="/"
							selected={page.url.pathname === '/'}
						>
							<IconHome />
						</Navigation.Tile>
						<Navigation.Tile
							id="1"
							labelExpanded="Background"
							href="/about-doron-tal"
							selected={page.url.pathname === '/about-doron-tal'}
						>
							<IconInfo />
						</Navigation.Tile>
						<Navigation.Tile
							id="2"
							labelExpanded="Resources"
							href="/resources"
							selected={page.url.pathname === '/resources'}
						>
							<IconLink />
						</Navigation.Tile>
					{/snippet}
				</Navigation.Rail>
			</div>
		</aside>

		<!-- Main content area -->
		<div class="flex flex-1 flex-col overflow-hidden px-0">
			<main class="flex-1 overflow-y-auto p-4">
				{@render children()}
			</main>
		</div>
	</div>
</div>
