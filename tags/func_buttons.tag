<func_buttons>

    <virtual>
        <div class="buttons">
            <div class="container">
                <div class="row">
                    <div class="three columns"> <button style={{width:"100%"}} onclick={add}><h5>+</h5></button></div>
                    <div class="three columns"><button style={{width:"100%"}} onclick={subtract}><h5>-</h5></button></div>
                    <div class="three columns"><button style={{width:"100%"}} onclick={multiply}><h5>x</h5></button></div>
                    <div class="three columns"><button style={{width:"100%"}} onclick={division}><h5>/</h5></button></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="three columns"></div>
                    <div class="nine columns"><button style={{width:"100%"}} onclick={clear}><h5>Clear</h5></button></div>
                    
                </div>
            </div>


            <h1>Result: {sum}</h1>


        </div>
    </virtual>

<script>
    
    this.sum = "";
 

    this.add=(e)=>{
        //Add buttton trigger
       e.preventDefault()
        riot.secondStore.trigger("AddValues")
    }

   this.subtract=(e)=>{
       //Subtract button trigger
        e.preventDefault()
        riot.secondStore.trigger("SubValues")
    }

    this.multiply=(e)=>{
        //Multiply button trigger
        e.preventDefault()
        riot.secondStore.trigger("MulValues")
    }

    this.division=(e)=>{
        //Division button trigger
        e.preventDefault()
        riot.secondStore.trigger("DivValues")
    }

    this.clear=(e)=>{
        e.preventDefault();
        window.location.reload();

    }

    this.on('mount', function(){

        //Add button listen
        

        //Display Results
        riot.secondStore.on("AddResult",function(data){

            this.sum=data
        }.bind(this))

        

        

    });
    

</script>

<style>
.row{
  

}

.buttons{
    width:100%;
    text-align:center;
    

}
</style>

</style>

</func_buttons>