<script>
    import { each } from "svelte/internal";

    let days = [
        { "name": "Monday", "id": 1},
        { "name": "Tuesday", "id": 2},
        { "name": "Wednesay", "id": 3},
        { "name": "Thursday", "id": 4},
        { "name": "Friday", "id": 5},
        { "name": "Saturday", "id": 6},
        { "name": "Sunday", "id": 7},
    ];

    let day_status = "";

    let exercises = [];

	const GetPlan = (index) => {

        day_status = days[index - 1].name;

		fetch('http://0.0.0.0:8080/api/workout/' + index)
        .then(response => response.json())
        .then(data => {
            data = data['exercises'];

            if(data == undefined) {
                data = "Break";
            }

            exercises = data;
        })
        .catch(err => {
            console.log(err);
            return [];
        })

	}
    
</script>

<main>
    <button style="display:inline;" class="button" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"> 
        Choose day  
    </button>

    <ul
        class="
        dropdown-menu
        min-w-max
        absolute
        hidden
        bg-white
        text-base
        z-50
        py-2
        list-none
        text-left
        rounded-lg
        shadow-lg
        mt-1
        m-0
        bg-clip-padding
        border-none
        "
        aria-labelledby="dropdownMenuButton1"
    >

        {#each days as day (day.id)}
            <a class="list_button" href="#body" on:click="{ () => GetPlan(day.id) }">{ day.name }</a>
        {/each}
    </ul>

    <h2> {day_status} </h2>
    <div class="backdrop-opacity-10 backdrop-invert bg-black/30 rounded-lg">
        {#if exercises == "Break"}
        <p>Break</p>
        {:else}
            {#each exercises as exercise}      
                <h2> {exercise.name} <br> {exercise.quantity} </h2>
            {/each}
        {/if}
    </div>
    

</main>

<style>

    p, h2 { 
        color: #ff3e00;
        position: relative;
        text-shadow: black 0.1em 0.1em 0.2em
    }

    h2 {
        font-size: 2em;
        margin-top: 1em;
    }


    p {
        margin-top: 2em;
		text-transform: uppercase;
        font-weight: 100;
        font-size: 3em;
    }


</style>