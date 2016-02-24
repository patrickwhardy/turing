require "digest"
require "hurley"
​
def mine(target, input)
  nonce = 0
  message = "#{input}#{nonce}"
  while Digest::SHA1.hexdigest(message).hex > target.hex
    nonce = nonce + 1
    message = "#{input}#{nonce}"
  end
  nonce
end
​
def target(difficulty)
  "0" * difficulty + "f" * (40 - difficulty)
end
​
def target_url
  "http://git-coin.herokuapp.com/target"
end
​
def find_me_a_nonce
  body = Hurley.get(target_url).body
  data = JSON.parse(body)
  target = data["target"]
  parent = data["parent_hash"]
  mine(target, parent)
end
​
def submission_url
  "http://git-coin.herokuapp.com/hash"
end
​
def submit_nonce_for_coin(nonce)
  puts Hurley.post(submission_url,
                   owner: "Patrick",
                   message: (nonce.to_s).body
end
