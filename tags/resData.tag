<resData>

<virtual>
    <div class=row>
        <div class="one of two columns">{}</div>
        <div class="one of two columns">{}</div>
    </div>
</virtual>

<script>

this.results=[]
this.on('mount',function(){
    this.handler.on('Backend',function(dataset){
        
        console.log(dataset)
      
        
    })

})

</script>

</resData>