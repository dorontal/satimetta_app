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

	let { children } = $props();
</script>

<div class="grid h-screen grid-rows-[auto_1fr_auto]">
	<!-- Header -->
	<header class="z-10 sticky top-0 backdrop-blur-md opacity-70">
		<div class="flex items-center p-2 bg-surface-100-900">
			<button type="button" class="btn-icon md:hidden"><IconMenu size="24" /></button>
			<div class="flex flex-auto justify-center">
				<span class="h6">Mindfulness Cultivation</span>
			</div>
			<button onclick={toggleDarkMode} type="button" class="btn-icon ml-auto"
				><IconSunMoon size="24" /></button
			>
		</div>
	</header>
	<!-- Grid Columns -->
	<div class="grid grid-cols-1 md:grid-cols-[auto_1fr]">
		<!-- Left Sidebar. -->
		<aside class="hidden bg-yellow-500 p-4 md:block">(sidebar)</aside>
		<!-- Main Content -->
		<main class="space-y-4 p-4">
			{@render children()}
		</main>
	</div>
	<!-- Footer -->
	<!--footer class="bg-surface-300 p-4">(footer)</footer-->
</div>
