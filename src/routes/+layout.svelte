<script lang="ts">
	import '../app.css';
	import { AppBar } from '@skeletonlabs/skeleton-svelte';
	import { Switch } from '@skeletonlabs/skeleton-svelte';
	import { onMount } from 'svelte';
	import IconMenu from 'lucide-svelte/icons/menu';
	import IconMoon from 'lucide-svelte/icons/moon';
	import IconSun from 'lucide-svelte/icons/sun';

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
		console.log('onMount(): storedDarkMode = ' + storedDarkMode);
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
	<header class="z-100 sticky top-0">
		<AppBar>
			{#snippet lead()}
				<button type="button" class="btn-icon h-full sm:block md:hidden"
					><IconMenu size="24" /></button
				>
			{/snippet}
			{#snippet trail()}
				<Switch
					name="mode"
					controlActive="bg-surface-200"
					bind:checked={darkMode}
					onCheckedChange={toggleDarkMode}
				>
					{#snippet inactiveChild()}<IconMoon size="14" />{/snippet}
					{#snippet activeChild()}<IconSun size="14" />{/snippet}
				</Switch>
			{/snippet}
			<h6 class="h6">Mindfuless Cultivation</h6>
		</AppBar>
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
