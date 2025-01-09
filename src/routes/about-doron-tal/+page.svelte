<script lang="ts">
	import { Accordion } from '@skeletonlabs/skeleton-svelte';
	import Diamond from 'lucide-svelte/icons/diamond';
	// State - provides 'value' needed for accordion
	const value = $state([]);
</script>

<svelte:head>
	<meta name="description" content="About Doron Tal / Doron Tal Mindfulness Biography" />
</svelte:head>

<Accordion {value} multiple classes="opacity-70">
	<Accordion.Item value="practice">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}Practice{/snippet}
		{#snippet panel()}
			<dl>
				<div>
					<dt>Daily Sitting Meditation Practice Group (2023 - Present)</dt>
					<dd>
						Daily online group meditations with <a
							href="https://www.clearmountainmonastery.org"
							target="_blank">Clear Mountain Monastery</a
						>.
					</dd>
				</div>
				<div>
					<dt>Ānāpānasati Meditation Method (2020 - Present)</dt>
					<dd>
						The sixteen-step meditation instructions of the Buddha - an interpretation of the
						description in Majjhima Nikaya Sutta 118.
					</dd>
				</div>
				<div>
					<dt>Ajahn Brahm's Meditation Method (2019 - 2020)</dt>
					<dd>Followed the description in Ajahn Brahm's book "Mindfulness, Bliss and Beyond".</dd>
				</div>
				<div>
					<dt>Walking Meditation (2019 - Present)</dt>
					<dd>
						Began with Yuttadhammo Bhikkhu's Theravada <a
							href="https://www.youtube.com/watch?v=_IFvablc6EI"
							target="_blank">walking meditation instructions</a
						> (one note per step), added Bhikkhu Bodhi's three-point technique (picking, placing, shifting)
						and a six-point method. The approach varies depending on mental state at the start of each
						session.
					</dd>
				</div>
				<div>
					<dt>Metta Practice (2015 - Present)</dt>
					<dd>
						Practiced Metta at Tibet House in New York City under the guidance of <a
							href="https://www.rachelhammerman.com"
							target="_blank">Rachel Hammerman</a
						>. Regularly attending
						<a href="https://www.baus.org/en/group-meditation-over-zoom" target="_blank"
							>Bhikkhu Bodhi's weekly Metta
						</a> sessions since 2019.
					</dd>
				</div>
				<div>
					<dt>Qigong (1989 - Present)</dt>
					<dd>
						Learned a Qigong (Chi Kung) set for spine healing, strengthening and stretching, created
						by Master Jiao Guo Ryu, from <a
							href="https://www.eomega.org/workshops/teachers/robert-tangora"
							target="_blank"
						>
							Robert Tangora</a
						>.
					</dd>
				</div>
				<div>
					<dt>Tai Chi (1988 - Present)</dt>
					<dd>
						Tai Chi is moving meditation. I mainly practice the
						<a href="https://www.youtube.com/watch?v=3_BKwlpOAkk" target="_blank">
							Yang Style Short Form of Prof. Chen Man Ching</a
						>
						and have studied under the instruction of Katherine Hannah,
						<a href="https://www.youtube.com/watch?v=6rLG3Ys-wIU" target="_blank">Maggie Newman</a>,
						<a
							href="https://www.facebook.com/UCBTaiji/videos/william-dere-pushing-hands-principles/2454512608101776"
							target="_blank">Sifu William Dere</a
						>, and since the late 80's, with
						<a href="https://www.williamccchen.com" target="_blank"
							>Great Grandmaster William C. C. Chen</a
						>.
					</dd>
				</div>
				<div>
					<dt>Breathwork & Body Scans (Mid 1980's - Present)</dt>
					<dd>
						Yoga breathing exercises to calm the body via abdominal breathing, counting, and
						visualization. Also started practicing the body scan.
					</dd>
				</div>
			</dl>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item value="teaching">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}Teaching{/snippet}
		{#snippet panel()}
			<dl>
				<div>
					<dt>Philadelphia Industrial Correctional Center (November, 2024 - Present)</dt>
					<dd>
						Facilitating the <a
							href="https://www.prisonmindfulness.org/path-of-freedom"
							target="_blank"
						>
							Path of Freedom</a
						>
						curriculum of the
						<a href="https://www.prisonmindfulness.org/" target="_blank">
							Prison Mindfulness Institute</a
						>
						to incarcerated individuals - one hour a week for ten weeks.
					</dd>
				</div>
				<div>
					<dt>Kennedy House, Philadelphia Mindfulness class (October, 2024 - Present)</dt>
					<dd>Introductory Mindfulness class - one hour a week for ten weeks.</dd>
				</div>
				<div>
					<dt>Qigong class, NASA Ames Research Center (Spring, 2005)</dt>
					<dd>
						Taught a Qigong set for spine stretching and strengthening - fourty five minutes a week
						for ten weeks.
					</dd>
				</div>
			</dl>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item value="training">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}Training{/snippet}
		{#snippet panel()}
			<dl>
				<div>
					<dt>Engaged Mindfulness Institute - Mindfulness Teacher Training (May 2024 - Present)</dt>
					<dd>
						The <a href="https://www.engagedmindfulness.org" target="_blank"
							>Engaged Mindfulness Institute</a
						>
						trains its students to facilitate mindfulness instruction in trauma-informed manner. The
						EMI mindfulness teacher training certifies its graduates via the
						<a href="https://imta.org" target="_blank"
							>International Mindfulness Teacher Association</a
						>'s accreditation as a Certified Mindfulness Teaching Professional (CMT-P). I have
						completed most of the requirements and hope to be certified by May, 2025.
					</dd>
				</div>
				<div>
					<dt>
						Prison Mindfulness Institute's <a
							href="https://www.prisonmindfulness.org/path-of-freedom"
							target="_blank"
						>
							Path of Freedom</a
						> - Prison mindfulness teacher/facilitator Training (July - August, 2024)
					</dt>
					<dd>
						The <a href="https://www.prisonmindfulness.org/path-of-freedom" target="_blank">
							Path of Freedom</a
						>
						curriculum of the
						<a href="https://www.prisonmindfulness.org/" target="_blank">
							Prison Mindfulness Institute</a
						> is a mindfulness-based emotional intelligence (MBEI) program developed for incarcerated
						individuals. It integrates mindfulness practices, emotional intelligence topics and exercises,
						and cognitive behavioral methods.
					</dd>
				</div>
				<div>
					<dt>MBSR 10-Week Teacher Training Foundations Class (2024)</dt>
					<dd>
						Attended the 10-week MBSR Teacher Training class offered by University of California,
						San Diego (UCSD)'s <a href="https://cih.ucsd.edu" target="_blank"
							>Centers for Integrative Health</a
						>, taught by
						<a href="https://cih.ucsd.edu/mindfulness/team/noriko-morita-harth" target="_blank"
							>Noriko Morita Harth</a
						>
						and
						<a
							href="https://www.mindful-way.com/teachers/korantemah-pierce-williams"
							target="_blank">Korantema Pierce Wiliams</a
						>.
					</dd>
				</div>
				<div>
					<dt>Santikaro's Class: Monday Morning Guided Ānāpānasati Meditations (2024)</dt>
					<dd>
						A year long class where Santikaro guides Ānāpānasati meditations, offered online via <a
							href="https://kevalaretreat.org"
							target="_blank">Kevala Retreat</a
						>.
					</dd>
				</div>
				<div>
					<dt>Santikaro's Class: Ānāpānasati Conversations (2023-2024)</dt>
					<dd>
						A year long class centered around the Buddha's 16 step meditation method, offered online
						via <a href="https://kevalaretreat.org" target="_blank">Kevala Retreat</a>.
					</dd>
				</div>
				<div>
					<dt>MBSR Class (September 2023)</dt>
					<dd>
						Attended an MBSR class, in exploration of teaching MBSR later. This was a University of
						California, San Diego (UCSD)'s <a href="https://cih.ucsd.edu" target="_blank"
							>Centers for Integrative Health</a
						>
						class taugt by
						<a href="https://cih.ucsd.edu/mindfulness/team/megan-prager-ma" target="_blank"
							>Megan Prager</a
						>
						and
						<a href="https://cih.ucsd.edu/mindfulness/team/jennifer-miller-psyd" target="_blank"
							>Jennifer A. Miller</a
						>.
					</dd>
				</div>
				<div>
					<dt>Neuroscience Ph. D. (1997)</dt>
					<dd>
						With advisor <a href="https://en.wikipedia.org/wiki/Eric_L._Schwartz"
							>Eric L. Schwartz</a
						> at Boston University.
					</dd>
				</div>
				<div>
					<dt>A Talk by His Holiness the Dalai Lama (1991)</dt>
					<dd>
						Attended a talk by his Holiness the Dalai Lama, titled <a
							href="https://www.youtube.com/watch?v=_2G-4m4y8Ss"
							target="_blank">"Overcoming Differences"</a
						>. This catalyzed further study of his work, mostly in the area of loving-kindness.
					</dd>
				</div>
				<div>
					<dt>Tai Chi and Qigong (1988 - Present)</dt>
					<dd>
						Tai Chi is one form of moving meditation. Studied and practiced the
						<a href="https://www.youtube.com/watch?v=3_BKwlpOAkk" target="_blank">
							Yang Style Short Form of Prof. Chen Man Ching</a
						>
						under the instruction of Katherine Hannah,
						<a href="https://www.youtube.com/watch?v=6rLG3Ys-wIU" target="_blank">Maggie Newman</a>,
						<a
							href="https://www.facebook.com/UCBTaiji/videos/william-dere-pushing-hands-principles/2454512608101776"
							target="_blank">Sifu William Dere</a
						>, and since the late 80's, with
						<a href="https://www.williamccchen.com" target="_blank"
							>Great Grandmaster William C. C. Chen</a
						>. In 1989 I learned a Qigong (Chi Kung) set for spine healing, strengthening and
						stretching, created by Master Jiao Guo Ryu, from
						<a href="https://www.eomega.org/workshops/teachers/robert-tangora" target="_blank">
							Robert Tangora</a
						>. Qigong is also a form of moving meditation.
					</dd>
				</div>
			</dl>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item value="retreats">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}Retreats{/snippet}
		{#snippet panel()}
			<dl>
				<div>
					<dt>Jhanas, Insight, and Dependent Origination (Nov. 22 - Dec. 2, 2024)</dt>
					<dd>
						Online silent retreat, with <a href="https://leighb.com" target="_blank"
							>Leigh Brasington</a
						>
						and
						<a href="https://www.cheltenhamzen.co.uk" target="_blank">Matt Harvey</a>, offered by
						<a href="https://gaiahouse.co.uk" target="_blank">Gaia House</a>.
					</dd>
				</div>
				<div>
					<dt>Engaged Mindfulness Institute Retreat (October 11-13, 2024)</dt>
					<dd>
						Online retreat, part of <a href="https://www.engagedmindfulness.org" target="_blank"
							>Engaged Mindfulness Institute</a
						>'s CMT-P certification.
					</dd>
				</div>
				<div>
					<dt>Engaged Mindfulness Institute Retreat (September 13-15, 2024)</dt>
					<dd>
						Online retreat, part of <a href="https://www.engagedmindfulness.org" target="_blank"
							>Engaged Mindfulness Institute</a
						>'s CMT-P certification.
					</dd>
				</div>
				<div>
					<dt>Engaged Mindfulness Institute Retreat (June 14-16, 2024)</dt>
					<dd>
						Online retreat, part of <a href="https://www.engagedmindfulness.org" target="_blank"
							>Engaged Mindfulness Institute</a
						>'s CMT-P certification.
					</dd>
				</div>
				<div>
					<dt>Engaged Mindfulness Institute Retreat (May 3-5, 2024)</dt>
					<dd>
						Online retreat, part of <a href="https://www.engagedmindfulness.org" target="_blank"
							>Engaged Mindfulness Institute</a
						>'s CMT-P certification.
					</dd>
				</div>
				<div>
					<dt>Retreat With Ajahn Kovilo (August 12 - September 13, 2024)</dt>
					<dd>
						Online retreat, offered by <a
							href="https://www.clearmountainmonastery.org"
							target="_blank">Clear Mountain Monastery</a
						>
						(only participated in the 3-hour morning sittings).
					</dd>
				</div>
				<div>
					<dt>Retreat with Santikaro (January 21-27, 2024)</dt>
					<dd>
						Online silent retreat titled
						<a
							href="https://www.kevalaretreat.org/santikaros-2024-on-line-retreat-schedule"
							target="_blank"
							>Mindfulness with Breathing: Contemplating Citta (mind, heart, psyche)</a
						>, with
						<a href="https://www.kevalaretreat.org/who-we-are" target="_blank">Santikaro</a>.
					</dd>
				</div>
				<div>
					<dt>Retreat with Bhikkhu Bodhi (March 17-20, 2023)</dt>
					<dd>
						Participated and volunteered in this online silent retreat, titled
						<a
							href="https://4nqqe.r.ag.d.sendibm3.com/mk/mr/mSFedAVBuMUCXhE_LqNU_CdoRSZwIcHpQ8ppyKnwbUClA8-HbYKyIeZ1rpfTQrx7yV4YAkolm1DECzKj6Su_KjvXLSxAca6SDDWwtdybmcNqN_OPvmTTbYVtnLhWFK8sH0c5MZIidQ"
							target="_blank">From Contemplation of the Body to Contemplation of the Mind</a
						>.
					</dd>
				</div>
				<div>
					<dt>Retreat with Tobi Warzinek (March 5-9, 2019)</dt>
					<dd>
						Five day retreat at <a href="https://phuket-meditation.com" target="_blank"
							>Phuket Meditation Center</a
						>. Tobi taught a meditation method based on Ajahn Brahm’s. After the retreat, I picked
						up "Mindfulness, Bliss and Beyond" by Ajahn Brahm and continued daily practice with that
						method for a few years.
					</dd>
				</div>
			</dl>
		{/snippet}
	</Accordion.Item>
</Accordion>
