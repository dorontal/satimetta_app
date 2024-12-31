<script lang="ts">
	import { Accordion } from '@skeletonlabs/skeleton-svelte';
	import Diamond from 'lucide-svelte/icons/diamond';

	// State
	
	const value = $state([]);
</script>

<svelte:head>
	<title>Mindfulness Resources</title>
	<meta name="description" content="Mindfulness Resources" />
</svelte:head>

<h6 class="h6">Mindfulness Resources</h6>
<Accordion {value} multiple classes="opacity-70">
	<Accordion.Item value="guided-body-scan-meditations">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}Guided Body Scan Meditations{/snippet}
		{#snippet panel()}
		<ul>
			<li>
				<a
					href="https://insighttimer.com/chelseapottenger/guided-meditations/10-minute-body-scan"
					target="_blank"
				>
					10-minute body scan - Chelsea Pottenger</a
				>
			</li>
			<li>
				<a
					href="https://soundcloud.com/ucsdmindfulness/20-min-body-scan-by-steve-hickman"
					target="_blank"
				>
					20-minute body scan - Steve Hickman</a
				>
			</li>
			<li>
				<a
					href="https://soundcloud.com/ucsdmindfulness/45-minute-body-scan-by-steve-hickman"
					target="_blank"
				>
					45-minute body scan - Steve Hickman</a
				>
			</li>
		</ul>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item value="guided-breath-meditations">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}Guided Breath Meditations{/snippet}
		{#snippet panel()}
		<ul>
			<li>
				<a href="https://www.youtube.com/watch?v=YFSc7Ck0Ao0" target="_blank">
					5-minute guided breath meditation - Diana Winston</a
				>
			</li>
			<li>
				<a href="https://www.youtube.com/watch?v=2GjZanuXWWk" target="_blank">
					10-minute guided breath meditation - Jon Kabat Zinn</a
				>
			</li>
			<li>
				<a
					href="https://soundcloud.com/ucsdmindfulness/20-min-seated-meditation-by-steve-hickman"
					target="_blank"
				>
					20-minute guided breath meditation - Steve Hickman</a
				>
			</li>
		</ul>
		{/snippet}
	</Accordion.Item>
</Accordion>
<!--div class="text-column">
	<h1>Mindfulness Resources</h1>
	<h3>Guided Body Scan Meditations</h3>
	<ul>
		<li>
			<a
				href="https://insighttimer.com/chelseapottenger/guided-meditations/10-minute-body-scan"
				target="_blank"
			>
				10-minute body scan - Chelsea Pottenger</a
			>
		</li>
		<li>
			<a
				href="https://soundcloud.com/ucsdmindfulness/20-min-body-scan-by-steve-hickman"
				target="_blank"
			>
				20-minute body scan - Steve Hickman</a
			>
		</li>
		<li>
			<a
				href="https://soundcloud.com/ucsdmindfulness/45-minute-body-scan-by-steve-hickman"
				target="_blank"
			>
				45-minute body scan - Steve Hickman</a
			>
		</li>
	</ul>
	<h3>Guided Mindfulness of Breathing Meditations</h3>
	<ul>
		<li>
			<a href="https://www.youtube.com/watch?v=YFSc7Ck0Ao0" target="_blank">
				5-minute guided breath meditation - Diana Winston</a
			>
		</li>
		<li>
			<a href="https://www.youtube.com/watch?v=2GjZanuXWWk" target="_blank">
				10-minute guided breath meditation - Jon Kabat Zinn</a
			>
		</li>
		<li>
			<a
				href="https://soundcloud.com/ucsdmindfulness/20-min-seated-meditation-by-steve-hickman"
				target="_blank"
			>
				20-minute guided breath meditation - Steve Hickman</a
			>
		</li>
	</ul>
	<h3>Walking Meditation Instructions</h3>
	<ul>
		<li>
			<a href="https://www.youtube.com/watch?v=_IFvablc6EI" target="_blank">
				Basic Walking Meditation Instructions - Yuttadhammo Bhikkhu</a
			>
		</li>
	</ul>
	<h3>Guided Loving-Kindness Meditations</h3>
	<ul>
		<li>
			<a href="https://www.youtube.com/watch?v=e-TeW9CI0bc" target="_blank">
				10-minute guided loving-kindness meditation - Sharon Salzberg</a
			>
		</li>
		<li>
			<a href="https://www.youtube.com/watch?v=QkZ0zc2qCG0" target="_blank">
				15-minute guided loving-kindness meditation - Ayya Khema</a
			>
		</li>
		<li>
			<a
				href="https://insighttimer.com/buddha-haus/guided-meditations/flower-garden-loving-kindness-meditation-metta"
				target="_blank"
			>
				17-minute guided loving-kindness meditation - Ayya Khema</a
			>
		</li>
		<li>
			<a href="https://www.youtube.com/watch?v=5luvQp--B8U" target="_blank">
				18-minute guided loving-kindness meditation - Thich Nhat Hanh</a
			>
		</li>
		<li>
			<a href="https://www.youtube.com/watch?v=aPiaLnWi6lM" target="_blank">
				25-minute guided loving-kindness meditation - Jack Kornfield</a
			>
		</li>
	</ul>
	<h3>Mindful Yoga</h3>
	<ul>
		<li>
			<a href="https://www.youtube.com/watch?v=BwQXNGp-X7c" target="_blank">
				Dr. Lynn Rossi - Mindful Yoga 1</a
			>
		</li>
		<li>
			<a href="https://www.youtube.com/watch?v=hyxtVJQmnEk" target="_blank">
				Dr. Lynn Rossi - Mindful Yoga 2</a
			>
		</li>
	</ul>
	<h3>Miscellaneous</h3>
	<ul>
		<li>
			<a href="https://www.youtube.com/watch?v=w6T02g5hnT4" target="_blank"
				>Why Mindfulness is a Superpower</a
			>
		</li>
		<li>
			<a
				href="https://docs.google.com/document/d/1AbaENWFLB3iBQWI5bz0LJOSeWt2_TwZBcuon3xqMHj8"
				target="_blank"
			>
				Mindful Attention Awareness Scale (MAAS)
			</a>
		</li>
		<li>
			<a
				href="https://docs.google.com/spreadsheets/d/1prfYuXq3_4Tuu57cO2gS70z-2wnq79uTDV6h4daKgr4"
				target="_blank"
			>
				U.S. Online Meditation Groups
			</a>
		</li>
		<li>
			<a href="https://imta.org" target="_blank">
				International Mindfulness Teachers Association (IMTA)
			</a>
		</li>
		<li>
			<a
				href="https://cdn.ymaws.com/imta.site-ym.com/resource/resmgr/IMTA_Infographic_final.pdf"
				target="_blank"
			>
				IMTA Mindfulness Infographic
			</a>
		</li>
	</ul>
	<h3>Mindfulness Related Research</h3>
	<ul>
		<li>
			<a
				href="https://www.ted.com/talks/matt_killingsworth_want_to_be_happier_stay_in_the_moment?subtitle=en"
				target="_blank"
			>
				Link Between Mindfulness and Happiness - Matt Killingsworth
			</a>
		</li>
		<li>
			<a href="https://www.youtube.com/watch?v=br8-qebjIgs" target="_blank">
				Polyvagal Theory: The New Science of Safety and Trauma - Seth Porges
			</a>
		</li>
		<li>
			<a href="https://goamra.org/" target="_blank"> American Mindfulness Research Association </a>
		</li>
	</ul>
	<h3>Poetry</h3>
	<ul>
		<li>
			<a
				href="https://www.mindfulnessassociation.net/words-of-wonder/grace-alice-walker/"
				target="_blank"
			>
				Grace - Alice Walker</a
			>
		</li>
		<li>
			<a
				href="https://allpoetry.com/poem/8534703-The-Guest-House-by-Mewlana-Jalaluddin-Rumi"
				target="_blank"
			>
				The Guest House - Jalaludin Rumi</a
			>
		</li>
		<li>
			<a
				href="https://yourmindfultribe.org/poems/2020/08/03/your-history-is-here-inside-your-body-by-martha-e"
				target="_blank"
			>
				Your History is Here Inside Your Body - Martha Elliot</a
			>
		</li>
		<li>
			<a href="http://www.phys.unm.edu/~tw/fas/yits/archive/oliver_wildgeese.html" target="_blank">
				Wild Geese - Mary Oliver</a
			>
		</li>
		<li>
			<a
				href="https://www.saltproject.org/progressive-christian-blog/2015/6/29/the-summer-day"
				target="_blank"
			>
				The Summer Day - Mary Oliver</a
			>
		</li>
		<li>
			<a href="https://www.poetryverse.com/octavio-paz-poems/between-going-staying" target="_blank">
				Between Going and Staying - Octavio Paz</a
			>
		</li>
		<li>
			<a
				href="https://www.centerforcompassionateleadership.org/admit-something-by-hafiz"
				target="_blank"
			>
				Admit Something - Hafiz</a
			>
		</li>
		<li>
			<a
				href="https://www.mindfulnessassociation.net/words-of-wonder/walk-slowly-danna-faulds/"
				target="_blank"
			>
				Walk Slowly - Dana Faulds</a
			>
		</li>
		<li>
			<a href="https://youarehere.substack.com/p/place-poem-lost-by-david-wagoner" target="_blank">
				Lost - David Wagoner</a
			>
		</li>
		<li>
			<a
				href="https://www.mindfulnessassociation.net/words-of-wonder/fear-kahlil-gibran/"
				target="_blank"
			>
				Fear - Khalil Gibran</a
			>
		</li>
	</ul>
</div>

<style>
	ul {
		margin-block-start: 0;
	}
</style-->
