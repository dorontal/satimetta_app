<script>
	import doronPhotoSrc from '$lib/images/doron.jpg';
</script>

<svelte:head>
	<meta name="description" content="Mindfulness Cultivation - Doron Tal" />
</svelte:head>

<section>
	<div class="intro-container">
		<div class="circle-image">
			<a href="/about-doron-tal">
				<img src={doronPhotoSrc} alt="Doron Tal" />
			</a>
		</div>
		<p class="intro-text">
			This space provides resources for developing mindfulness and loving-kindness: practices valued
			for thousands of years and now supported by both traditional wisdom and modern science. Here,
			you'll find Doron Tal's related background, and curated resources to help you cultivate these
			qualities in daily life and to support ongoing instruction.
		</p>
	</div>
</section>

<style>
	section {
		margin: 0 auto;
		display: flex;
		flex-direction: column;
		/* justify-content: center; */
		max-width: 90%;
		align-items: center;
		flex: 0.6;
	}

	.intro-container {
		width: 100%; /* Ensures the container spans the full width */
		overflow: hidden; /* Clears floats */
	}

	.circle-image {
		width: 108px;
		height: 108px;
		border-radius: 50%;
		overflow: hidden;
		margin-right: 15px; /* Space between image and text */
		margin-bottom: 10px; /* Optional: Space between image and text when it wraps below */
		border: 2px solid var(--color-theme-1);
		float: left; /* Makes the image float to the left */
	}

	.circle-image img {
		width: 100%;
		height: 100%;
		object-fit: cover;
	}

	.intro-text {
		line-height: 1.6;
		margin: 0;
		font-size: 1rem;
	}
</style>
