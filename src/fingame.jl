module fingame

function greet()
    println("Welcome to fin game!")
end

# Command strings
ADMIN = Dict(
    "HELP"=>["help","commands","?","h"],
    "QUIT"=>["quit","q"],
    "NEWGAME"=>["newgame","restart","r"]
)

function admin(lowered_input::AbstractString)
    if lowered_input in ADMIN["HELP"]
        println("?: Help; Q: Quit; R: Restart;")
        println("B: Buy Menu; S: Sell Menu; W: Wait")
        return "AWAITING COMMAND"
    elseif lowered_input in ADMIN["QUIT"]
        return "QUIT"
    end
end

function process_command(lowered_command::AbstractString)
    admin(lowered_command)
end

function input_loop()
    result = ""
    state = join(["You're winning! Current money: ", "PLAYER_MONEY"])
    while true
        println(state)
        command = lowercase(readline())
        result = process_command(command)
        if result == "QUIT"
            break
        end
    end
    println("Thank you for playing fingame!")
end

greet()
input_loop()

end
