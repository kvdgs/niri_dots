if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    random choice \
        "❝ 	So now Ive seen it all
	Hells wrath
	No man has greater glory
	Cause now, now, now youre living through me
	So Im done with saving you
	A gift unto myself
	A tired savior, a wasted favor
	And Im lucky Im alive 			❞
	" \
        \
        "❝ 	(I feel you, relate to you, accuse you)
	Wash away us all
	Take us with the flood 			❞
	" \
        \
        "❝ 	5 minutes alone
	Just give us
	5 minutes alone 	❞
	" \
        \
        "❝ 	Ow
	Step aside for the cowboys from hell 		❞
	"
end

if test -r ~/.cache/wal/sequences
    cat ~/.cache/wal/sequences &
end