cls
#nu a mersL: npx genaiscript run befCommit --model "azure_serverless:Llama-3-3-70B-Instruct-oapyq"
#   TODO: OPENAI_API_TYPE=localai in .env
# npx genaiscript run befCommit --model "gpt-4" 
$text = "";
$modelNames =  @('ollama:llama3.2','ollama:deepseek-r1',"ollama:phi4","ollama:gemma2:27b","ollama:smallthinker","ollama:falcon3:10b","ollama:dolphin3")
$modelNames =  @('ollama:llama3.2',"ollama:phi4","ollama:smallthinker","ollama:dolphin3","ollama:falcon3:10b","ollama:gemma2:27b",'ollama:deepseek-r1:32b')
foreach ( $modelName in $modelNames )
{
    $sw = [Diagnostics.Stopwatch]::StartNew()
    $a = npx genaiscript run blog blog.txt --model $modelName   | Out-String
    $index= $a.IndexOf($modelName)
    Write-Host "found " $index "for "   $modelName 
    $text += " `r`n <br /><h1>Model Name "+ $modelName + "</h1> <br />`r`n" +$a.Substring($index+ $modelName.Length)
    remove-item blogAI.html
    $text | Out-File blogAI.html
    $sw.Stop()
    Write-Host $modelName " took " $sw.Elapsed.TotalSeconds
        #    Write-Host $a.Substring($index+ $modelName.Length)
}
remove-item blogAI.html
$text | Out-File blogAI.html
return
exit
# npx genaiscript run befCommit     --model "ollama:deepseek-r1" 
# npx genaiscript run blog      --model "ollama:phi4" 
# npx genaiscript run blog      --model "ollama:gemma2:27b"
# npx genaiscript run blog      --model "ollama:smallthinker"
# npx genaiscript run blog      --model "ollama:smallthinker"

