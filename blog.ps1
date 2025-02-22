cls
#nu a mersL: npx genaiscript run befCommit --model "azure_serverless:Llama-3-3-70B-Instruct-oapyq"
#   TODO: OPENAI_API_TYPE=localai in .env
# npx genaiscript run befCommit --model "gpt-4" 
$text = "";
$modelNames =  @('ollama:llama3.2','ollama:deepseek-r1',"ollama:phi4","ollama:gemma2:27b","ollama:smallthinker","ollama:falcon3:10b","ollama:dolphin3")
foreach ( $modelName in $modelNames )
{
    $a = npx genaiscript run blog blog.txt --model $modelName   | Out-String
    $index= $a.IndexOf($modelName)
    Write-Host "found " $index "for "   $modelName 
    $text += " `r`n <h1>Model Name "+ $modelName + "</h1> `r`n" +$a.Substring($index+ $modelName.Length)
    remove-item blogAI.txt
    $text | Out-File blogAI.txt
    #    Write-Host $a.Substring($index+ $modelName.Length)
}
remove-item blogAI.txt
$text | Out-File blogAI.txt
return
exit
# npx genaiscript run befCommit     --model "ollama:deepseek-r1" 
# npx genaiscript run blog      --model "ollama:phi4" 
# npx genaiscript run blog      --model "ollama:gemma2:27b"
# npx genaiscript run blog      --model "ollama:smallthinker"
# npx genaiscript run blog      --model "ollama:smallthinker"

