<script lang="ts">
	import '../app.css';
	import { onMount } from 'svelte';
	import IconMenu from 'lucide-svelte/icons/menu';
	import IconSunMoon from 'lucide-svelte/icons/sun-moon';

	// enable site-wide pre-rendering of pages
	export const prerender = true;

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

	// Function to close the sidebar
	const closeSidebar = () => {
		isSidebarOpen = false;
	};

	let { children } = $props();
</script>

<div class="flex h-screen flex-col">
	<!-- Header, spanning the full width -->
	<header class="z-10 sticky top-0 backdrop-blur-md">
		<div class="flex items-center p-2 bg-surface-100-900">
			<button onclick={toggleSidebar} type="button" class="btn-icon md:hidden ml-1"><IconMenu size="24" /></button>
			<div class="flex flex-auto justify-center">
				<span class="h6">Mindfulness Cultivation</span>
			</div>
			<button onclick={toggleDarkMode} type="button" class="btn-icon ml-auto mr-3"
				><IconSunMoon size="24" /></button
			>
		</div>
	</header>

	<div class="flex flex-1 overflow-hidden">
		<!-- Sidebar: Hidden on mobile, visible on lg and up -->
		<div class="m-0 hidden h-full w-48 overflow-hidden p-0 md:block bg-orange-500">Sidebar</div>

		<!-- Main content area -->
		<div class="flex flex-1 flex-col overflow-hidden px-0">
			<main class="flex-1 overflow-y-auto p-4">
				{@render children()}
			</main>
		</div>
	</div>

	<!-- Footer, spanning the full width -->
	<!-- footer class="flex h-16 p-4">Footer</footer -->

	<!-- Sidebar drawer (conditionally rendered based on `isSidebarOpen`) -->
	{#if isSidebarOpen}
		<div class="fixed inset-0 z-50 bg-opacity-50">
			<div class="absolute left-0 top-0 h-full w-48 p-4 bg-yellow-500">
				Sidebar
				<button type="button" class="absolute right-4 top-4 text-xl" onclick={closeSidebar}
					>&times;</button
				>
			</div>
		</div>
	{/if}
	</div>
