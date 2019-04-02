Crontab Notes
=============
<p> A few notes on creating/editing cronjobs in fish </p>

## access the crontab editor
`crontab -e`
<p>then, to exit the editor </p>
*press escape*
`:wq`


## to create a new cronjob (python)

<p>run the program 'send slack message' with python every 10 mins </p>
`*/10 *  * * *  python "/Users/benduffey/Desktop/send slack message"`

<p>run the program 'send slack message' with python @ 8:30 am every morning </p>
`8 30  * * *  python "/Users/benduffey/Desktop/send slack message"`


## view existing crontab jobs
`crontab -l`
