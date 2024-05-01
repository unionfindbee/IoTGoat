. .env

# Install Mayhem
curl --fail -L https://app.mayhem.security/cli/Linux/install.sh | sh
MAYHEM_PROMPT=1 mayhem login --url ${MAYHEM_URL} --token ${MAYHEM_TOKEN}