<script lang="ts">
	import { Navigation } from '@skeletonlabs/skeleton-svelte';
	import IconHome from 'lucide-svelte/icons/home';
	import IconInfo from 'lucide-svelte/icons/info';
	import IconLink from 'lucide-svelte/icons/link';
</script>

<div>
	<!-- without the <div>, <Navigation.Rail> shows up in the center of the sidebar -->
	<Navigation.Rail expanded>
		{#snippet tiles()}
			<Navigation.Tile id="0" labelExpanded="Home" href="/">
				<IconHome />
			</Navigation.Tile>
			<Navigation.Tile id="1" labelExpanded="Background" href="/about-doron-tal">
				<IconInfo />
			</Navigation.Tile>
			<Navigation.Tile id="2" labelExpanded="Resources" href="/resources">
				<IconLink />
			</Navigation.Tile>
		{/snippet}
	</Navigation.Rail>
</div>
