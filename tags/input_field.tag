<input_field>

<div class=input_fields>
    <div class="container">
        <div class="row">
            <div class="one-half column"><input ref="input_1" name="input_1" type="text"  oninput={getValue} placeholder={input1}> </div>
            <div class="one-half column"><input ref="input_2" name="input_2" type="text" oninput={getValue} placeholder={input2}> </div>
        </div>
    </div>
</div>

<script>
    this.input1="Insert Number";
    this.input2="Insert Number";

    this.getValue=(e)=>{
    e.preventDefault()
        var numbers = /^[0-9]+$/;
            if(e.target.name=="input_1"){
                
            input1=(e.target.value)
           
                if(!input1.match(numbers)){
                    input1="Insert Number";
                }
            }
            if(e.target.name=="input_2"){
             input2=(e.target.value)
                if(!input2.match(numbers)){
                    input2="Insert Number";
                }
            }
          
            riot.store.trigger("getValues",input1,input2)
                
    }


this.on('mount',function(){
    riot.store.on("getValues",function(input1,input2){
        if(input1.match("Insert Number")||input2.match("Insert Number")){
            alert("Insert ONLY Numbers ")
            window.location.reload();
        }
    }
    )

        riot.secondStore.on("AddValues",function(){
            var i1=parseInt(input1,10);
            var i2=parseInt(input2,10);
            var addR=i1+i2;
            riot.secondStore.trigger("AddResult",addR)
        })

  

        riot.secondStore.on("SubValues",function(){
            var i1=parseInt(input1,10);
            var i2=parseInt(input2,10);
            var addR=i1-i2;
          riot.secondStore.trigger("AddResult",addR)
        })

        riot.secondStore.on("MulValues",function(){
            var i1=parseInt(input1,10);
            var i2=parseInt(input2,10);
            var addR=i1*i2;
          riot.secondStore.trigger("AddResult",addR)
        })

        riot.secondStore.on("DivValues",function(){
            var i1=parseInt(input1,10);
            var i2=parseInt(input2,10);
            var addR=i1/i2;
          riot.secondStore.trigger("AddResult",addR)
        })

    })



   

</script>
<style>




</style>

</input_field>