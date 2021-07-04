module fingame

function greet()
    println("Welcome to fin game!")
end

# Command strings
ADMIN = Dict(
    "HELP"=>["help","commands","?","h"],
    "QUIT"=>["quit","q","exit"],
    "NEWGAME"=>["newgame","restart","r"]
)
BUY = ["b", "buy"]
SELL = ["s", "sell"]

function admin(lowered_input::AbstractString)
    if lowered_input in ADMIN["HELP"]
        println("?: Help; Q: Quit; R: Restart;")
        println("B: Buy Menu; S: Sell Menu; W: Wait")
        return "AWAITING COMMAND"
    elseif lowered_input in ADMIN["QUIT"]
        return "QUIT"
    elseif lowered_input in BUY
        println("<BUY MENU GOES HERE>")
        println(readline())
    elseif lowered_input in SELL
        println("<SELL MENU GOES HERE>")
        println(readline())
    else
        println(join(["Input not recognized: ", lowered_input]))
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
        print("\$\$ ")
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
