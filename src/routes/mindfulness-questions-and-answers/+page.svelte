<script lang="ts">
	import { Accordion } from '@skeletonlabs/skeleton-svelte';
	import Diamond from 'lucide-svelte/icons/diamond';
	// State - provides 'value' needed for accordion
	const value = $state([]);
</script>

<svelte:head>
	<meta
		name="description"
		content="Mindfulness Questions and Answers / Mindfulness Q&A / Mindfulness Frequently Asked Questions / Mindfulness FAQ"
	/>
</svelte:head>

<Accordion {value} multiple classes="opacity-70">
	<Accordion.Item value="definition-of-mindfulness">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}What's the Definition of Mindfulness?{/snippet}
		{#snippet panel()}
			<div>
				<p>
					<a href="https://www.mindful.org/jon-kabat-zinn-defining-mindfulness/"
						>Jon Kabat-Zinn's definition
					</a>: Mindfulness is the awareness that arises from paying attention, on purpose, in the
					present moment, and non-judgmentally. Some expand on the idea of "non-judgmentally"; for
					example, Diana Winston describes it as being "with curiosity and openness to each
					experience."
				</p>
				<p>
					The above definition of mindfulness refers to the mental capacity for mindfulness. This
					capacity can fluctuate throughout the day, but it can also be strengthened over time, much
					like a muscle, through consistent daily formal practice. The term <b>trait mindfulness</b>
					descries the baseline level of mindfulness - the steady, underlying mindfulness capacity of
					the mind. <b>State mindfulness</b>, on the other hand, refers to the momentary experience
					of mindfulness. A helpful way to distinguish between the two is to think of state
					mindfulness as answering the question, "How mindful are you right now?" and trait
					mindfulness as answering, "How mindful are you these days?"
				</p>
				<p>
					<b>Mindfulness practice</b> refers to the activities and exercises aimed at cultivating mindfulness.
					It is the process that strengthens trait mindfulness, enhances the average level of state mindfulness,
					and generally improves the mind’s capacity to be mindful. The term mindfulness practice can
					refer to: (a) a regular daily routine of practicing mindfulness, (b) a specific meditation
					session, (c) various types of mindfulness meditations, or (d) informal practices where mindfulness
					is applied to everyday activities.
				</p>
			</div>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item value="what-mindfulness-is-not">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}What Mindfulness is Not{/snippet}
		{#snippet panel()}
			<div>
				<p>Some common misconceptions about mindfulness:</p>
				<p>
					<b>Mindfulness</b> is not the same as <b>mindfulness practice</b>:
					<b>Mindfulness</b> is a quality of the mind (see the definition of mindfulness question,
					above) that can be strengthened through <b>mindfulness practice</b> - a regular routine to
					cultivate this skill - just as a muscle can be strengthened via repeated workout.
					<b>Mindfulness practice</b>
					and
					<b>meditation</b>
					are used synonymously here.
				</p>
				<p>
					<b>Mindfulness practice is not the same as relaxation:</b>
					While mindfulness practice may lead to calmness, its purpose is not relaxation. It’s about
					paying attention to the present moment - whatever it holds - with openness, curiosity, and
					kindness.
				</p>
				<p>
					<b>Mindfulness practice is not a quick fix:</b>
					Like building physical strength at the gym, mindfulness develops gradually with consistent
					practice. Without regular effort, mindfulness may weaken. Steady, ongoing practice creates
					lasting benefits.
				</p>
				<p>
					<b>Mindfulness is not about getting rid of thoughts or emotions:</b>
					Instead of avoiding or suppressing thoughts and feelings, mindfulness involves noticing and
					accepting them as they arise, without attaching meaning or reacting to them.
				</p>
				<p>
					<b>Mindfulness practice is not a mental escape:</b>
					When applied to daily life, mindfulness encourages engagement with whatever arises in the mind,
					rather than avoiding it. This distinguishes mindfulness from mental escapes like using substances
					or getting lost in daydreams.
				</p>
			</div>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item
		value="difference-between-focusing-on-a-single-object-in-meditation-and-practicing-open-awareness"
	>
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}What's the difference between focusing on a single object in meditation and
			practicing open or choiceless awareness?{/snippet}
		{#snippet panel()}
			<div>
				<p>
					In mindfulness practice, <b>open awareness</b> refers to a state of staying receptive to whatever
					arises in the present moment, without choosing a specific object to focus on. This approach
					contrasts with focusing on a single object, such as the breath, where attention remains fixed.
				</p>
				<p>
					With open awareness, the “object” of meditation naturally shifts as new sensations,
					thoughts, or emotions arise, allowing for a dynamic and fluid focus. The term <b
						>choiceless awareness</b
					>, coined by J. Krishnamurti, is also used to describe this practice. It emphasizes the
					lack of preference for any particular focus, keeping the mind open and observant of the
					entire experience as it unfolds.
				</p>

				<p>
					Open awareness is an advanced practice. For individuals with highly distractible minds or
					those new to mindfulness, it can be particularly challenging. Instead of cultivating
					mindful openness, the experience may easily slip into (see question about how mindfulness
					differs from mind-wandering). For such individuals, it is advisable to still the mind
					first, e.g, via mindfulness of breathing, before switching to open awareness.
				</p>
				<p>
					However, open awareness can serve a valuable role as an initial <b>preparatory step</b> for
					focused meditation. Starting with open awareness helps ease the transition from a scattered,
					everyday state of thinking about anything to focusing on just one thing. A brief period of
					open awareness at the start of a session allows the mind to settle naturally into the present
					moment, creating a gentle bridge toward refined focus on a single object.
				</p>
			</div>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item value="difference-between-formal-and-informal-mindfulness-practice">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}What's the difference between formal and informal mindfulness practice?{/snippet}
		{#snippet panel()}
			<div>
				<p>
					Formal mindfulness practice involves intentionally setting aside time and space to focus
					on a specific meditation method or exercise, while informal mindfulness practice is about
					weaving mindfulness into everyday activities, like brushing your teeth, washing the
					dishes, or eating. Both types of practices cultivate mindfulness.
				</p>
				<p>
					Informal practice helps life flow more smoothly, with greater ease and presence. It
					supports a calm, attentive state that enhances daily interactions, decisions, and overall
					well-being, but on its own may not lead to real progress. Formal practice provides depth
					and continuity that strengthen informal mindfulness and make it more effective throughout
					the day.
				</p>
				<p>
					Formal practice has (much) greater potential to bring the mind to deeper states of
					collectedness, indistractibility and tranquility, which can lead to greater insight and
					enhanced mind training.
				</p>
				<p>
					Both types of practice reinforce each other: formal practice strengthens the mental
					capacity for mindfulness, making it easier to remain mindful in daily activities. The
					reverse is equally important: being continuously mindful throughout daily activities
					strengthens the “mental muscle” of mindfulness, which in turn supports meditation practice
					and allows it to go deeper.
				</p>
				<p>
					Steady progress requires both formal and informal practice; neither alone is sufficient.
				</p>
			</div>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item value="how-does-mindfulness-practice-differ-from-mind-wandering">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}How Does Mindfulness Practice Differ from Mind Wandering?{/snippet}
		{#snippet panel()}
			<div>
				<p>
					When we let our minds wander, our thoughts drive us from one idea or emotion to the next,
					as if we’re in the passenger seat while our thoughts do the driving. In mindfulness
					practice, however, we notice our thoughts when they appear, but we don’t let them drive
					us. Instead, we gently and kindly return our focus to our main object of meditation. Here
					are some important differences between the two:
				</p>
				<ul>
					<li>
						<b>Intention and Control</b>
						<p>
							Mindfulness involves a deliberate choice to stay in the present moment, while mind
							wandering happens unintentionally and often leads to distraction. With mindfulness,
							our attention is guided intentionally. In mind wandering, however, attention operates
							on its own, without conscious direction.
						</p>
					</li>
					<li>
						<b>Present Moment Awareneess</b>
						<p>
							Mindfulness anchors us in the present, helping us see reality as it is, whereas mind
							wandering is often about the past or future. This contrast could clarify how
							mindfulness practice strengthens our ability to engage fully with life as it unfolds.
						</p>
					</li>
					<li>
						<b>Emotional Awareness</b>
						<p>
							mind wandering might trigger emotional reactions that go unnoticed. For instance,
							thoughts can drift toward worries or regrets, creating stress or anxiety, while
							mindfulness invites us to notice and be with these emotions.
						</p>
					</li>
					<li>
						<b>Brain and Health Benefits</b>
						<p>
							Mindfulness not only enhances focus and emotional resilience but also has proven
							benefits for brain health. By training the mind to stay present, mindfulness reduces
							stress, improves cognitive function, and fosters greater emotional regulation. In
							contrast, mind wandering can often lead to rumination and heightened anxiety, which
							can negatively impact both mental well-being and overall brain function.
						</p>
					</li>
				</ul>
			</div>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item value="difference-between-meditation-and-mindfulness-practicce">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}What's the difference between meditation and mindfulness practice?{/snippet}
		{#snippet panel()}
			<div>
				<p>
					Meditation encompasses a variety of practices used for different purposes across the
					world's major religions and secular traditions. Mindfulness practice, similarly, takes
					many forms. When a meditation practice directly cultivates mindfulness - or does so as a
					side effect - it can be referred to as a formal mindfulness practice.
				</p>
				<p>
					However, mindfulness doesn't require meditation. Informal mindfulness practice involves
					bringing mindful awareness to any activity throughout the day - for example, eating,
					walking, working, or talking to someone.
				</p>
				<p>
					In short: meditation is one way to develop mindfulness, but mindfulness can be practiced
					at any moment, not just during meditation.
				</p>
			</div>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item value="difference-between-prayer-and-mindfulness-practice">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}
			What's the difference between prayer and mindfulness practice?
		{/snippet}
		{#snippet panel()}
			<div>
				<p>
					Prayer can be thought of as a conversation: expressing gratitude, seeking guidance, or
					asking for something. Mindfulness, on the other hand, involves cultivating awareness of
					the present moment without trying to change it. Rather than asking for anything,
					mindfulness is about being with what is - observing thoughts, emotions, and sensations
					without reacting or getting carried away. Practicing mindfulness can deepen our ability to
					meet life as it unfolds, with greater clarity and acceptance.
				</p>
			</div>
		{/snippet}
	</Accordion.Item>
	<hr class="hr" />
	<Accordion.Item value="what-to-do-about-body-tension-during-meditation">
		{#snippet lead()}<Diamond size={14} />{/snippet}
		{#snippet control()}What to do about body tension during meditation?{/snippet}
		{#snippet panel()}
			<div>
				<p>
					It’s common for tension to build in the body during meditation. Here are some brief
					suggestions for managing body tension during meditation:
				</p>
				<ul>
					<li>
						<b>Intentional Breathing Reset</b>
						<p>
							Temporarily shift to intentional breathing: gently take full, long breaths with a
							longer out-breath than the in-breath, for 3-4 breaths, then return to your meditation
							method. This reset procedure generally tends to make the mind less distractible.
						</p>
					</li>
					<li>
						<b>Posture Adjustment</b>
						<p>
							Adjusting your posture may help relieve muscle tension. Frequent adjustments, however,
							tend to distract the mind. Try to limit adjustments to one, maybe two, per sit.
						</p>
					</li>
					<li>
						<b>Awareness of Tension with Breath</b>
						<p>
							Focus on the area of tension, noticing its sensations and location while noting each
							leg of the breath. Acknowledge the tension without trying to change it, with kindness,
							patience, and self-compassion.
						</p>
						<p>
							Visualizations can support this, e.g, imagine oxygen nourishing your body, especially
							tense areas, on each in-breath. On the out-breath, envision that releasing what your
							body no longer needs helps further release the tension.
						</p>
					</li>
					<li>
						<b>Whole Body Awareness With Breath</b>
						<p>
							Expand your awareness to the entire body as a whole, while noting each in-breath and
							out-breath. Breathing in, feel the entire body; breathing out, feel the entire body.
							Sometimes focusing on the body as a whole can distract the mind away from any specific
							location where there is pain or tension.
						</p>
					</li>
				</ul>
			</div>
		{/snippet}
	</Accordion.Item>
</Accordion>
