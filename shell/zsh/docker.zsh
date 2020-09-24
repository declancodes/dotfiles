function dcl-backup-db() {
    dcl exec db bash -c "pg_dump -U $1 $2 > db-backup.txt"
    docker cp $(dcl ps -q db):db-backup.txt $3
}

function dcl-restore-db() {
    docker cp $3 $(dcl ps -q db):db-backup.txt
    dcl exec db bash -c "psql -U $1 $2 < db-backup.txt"
}
