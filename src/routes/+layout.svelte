<script lang="ts">
	import '../app.css';
	import { page } from '$app/state';
	import { Navigation } from '@skeletonlabs/skeleton-svelte';
	import { onMount } from 'svelte';
	import { onNavigate } from '$app/navigation';

	import IconMenu from 'lucide-svelte/icons/menu';
	import IconSunMoon from 'lucide-svelte/icons/sun-moon';
	import IconHome from 'lucide-svelte/icons/home';
	import IconInfo from 'lucide-svelte/icons/info';
	import IconLink from 'lucide-svelte/icons/link';
	import CircleHelp from 'lucide-svelte/icons/circle-help';

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

	// Function to close the sidebar when the backdrop is clicked (for mobile)
	const closeSidebar = (e: Event) => {
		if (isSidebarOpen && window.innerWidth < 768) {
			e.stopPropagation();
			isSidebarOpen = false;
		}
	};

	onNavigate(({ from, to }) => {
		isSidebarOpen = false;
	});

	// Get the header text based on the current URL path
	function getHeaderText() {
		const path = page.url.pathname;
		if (path === '/') {
			return 'Mindfulness Cultivation';
		} else if (path === '/about-doron-tal') {
			return 'Doron Tal - Background';
		} else if (path === '/mindfulness-resources') {
			return 'Mindfulness Resources';
		} else if (path === '/mindfulness-questions-and-answers') {
			return 'Mindfulness Q&A';
		}
		return 'Mindfulness Cultivation'; // Default text
	}

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
				<!-- Dynamically display the header text -->
				<span class="h6">{getHeaderText()}</span>
			</div>
			<button onclick={toggleDarkMode} type="button" class="btn-icon ml-auto mr-3">
				<IconSunMoon size="24" />
			</button>
		</div>
	</header>

	<div class="relative flex flex-1 overflow-hidden">
		<!-- Semi-transparent backdrop when sidebar is open and screen is small -->
		<div
			role="button"
			tabindex="-1"
			onclick={closeSidebar}
			onkeyup={() => null}
			class="fixed inset-0 bg-gray-800 bg-opacity-50 md:hidden"
			class:opacity-0={isSidebarOpen === false}
			class:hidden={isSidebarOpen === false}
			class:opacity-50={isSidebarOpen && window.innerWidth < 768}
		></div>

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
							id="2"
							labelExpanded="Mindfulness Resources"
							href="/mindfulness-resources"
							selected={page.url.pathname === '/mindfulness-resources'}
						>
							<IconLink />
						</Navigation.Tile>
						<Navigation.Tile
							id="3"
							labelExpanded="Mindfulness Q&A"
							href="/mindfulness-questions-and-answers"
							selected={page.url.pathname === '/mindfulness-questions-and-answers'}
						>
							<CircleHelp />
						</Navigation.Tile>
						<Navigation.Tile
							id="1"
							labelExpanded="About"
							href="/about-doron-tal"
							selected={page.url.pathname === '/about-doron-tal'}
						>
							<IconInfo />
						</Navigation.Tile>
					{/snippet}
				</Navigation.Rail>
			</div>
		</aside>

		<!-- Main content area -->
		<div
			role="button"
			tabindex="-1"
			onclick={closeSidebar}
			onkeyup={() => null}
			class="flex flex-1 flex-col overflow-hidden px-0"
		>
			<main class="flex-1 overflow-y-auto p-4">
				{@render children()}
			</main>
		</div>
	</div>
</div>
