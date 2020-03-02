
//<--------SINGLE PAGE APPLICATION LOGIC
var contextPath = $('body').data('baseurl');
var checkChangesEnabled = true;


$(document).ready(function(){
	NavigationService()
	device = new Twilio.Device();
	
    navigator.mediaDevices.getUserMedia({ audio: true })
      .then(function (stream) {
    	  device.setup("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJBQ2M4M2EwZTNkYWJmNTdiYzY5N2U3OWE0Mjc2ZmQ2YWU4IiwiZXhwIjoiMTU4MjkwNzgwMyIsInNjb3BlIjoic2NvcGU6Y2xpZW50OmluY29taW5nP2NsaWVudE5hbWU9MjE4NzgyIHNjb3BlOmNsaWVudDpvdXRnb2luZz9jbGllbnROYW1lPTIxODc4MiZhcHBTaWQ9QVBiMThhMTFiMzFiMTU0OWMwOTI0MmQzMjFkZWZkZDMxZiJ9.NK1IYGzBpJwjI_RGotlpiWQQn6bGaEz_JeNuhWd6yTo", {
    	        audioConstraints: {
    	          mandatory: {
    	            googAutoGainControl: false, googEchoCancellation: true, googNoiseSuppression: true, googHighpassFilter: false
    	          }
    	        }, debug: true, logLevel: 'info'
    	      });
    		setTimeout(() => {
    	    	//placeCall()
    		}, 2000);
        $.get("https://db.talentify.in/assoc?method=TWILIO_TOKEN&user_id=218782")
          .then(respose => {
            console.log("get>>>>>>>>>>>>>>>");
            console.log(respose);

            
            //console.log('Token: ' + respose.data.token);
            //console.log(device)

          })
          .catch(error => {
            console.error(console.error())
          })



           isAudioJackListener = true;
        if (window.navigator && window.navigator.geolocation) {
          window.navigator.geolocation.getCurrentPosition(
            function (position) {
              document.latitude = position.coords.latitude;
              document.longitude = position.coords.longitude;
            }
          );

        }
      }).catch(function (err) {
        // swal("Failed","Your device does not have an active microphone!",
        // "error");

      });


    console.log(device);



    device.on('ready', function (device) {
      console.log('device ready');
    });
    device.on('error', function (error) {
      console.log('device error');

    });
    device.on('offline', function (device) {
      console.log('device offline');

    })


    device.on('connect', function (conn) {
      console.log('connected');
      if (!activeTask.connection) {
        // console.log('Connection undefined before connect');
        activeTask.connection = conn;
        console.log("device_________________")
        console.log(device)
      }
      activeTask.connectedTime = new Date().getTime();
      // console.log('Successfully established call in ' +
      // (activeTask.connectedTime - activeTask.start) + 'ms!');
      activeTask.sid = activeTask.connection.parameters.CallSid;
      if (activeTask.type === 'OutboundTask') {
        console.log("making call")
      }
      if (activeTask.type === 'OutboundManual') {
        console.log("make cxalls to: " + activeTask.toNumber)
      }

    });
})



// On hash change call Navigation Service
window.onhashchange = function(){
	var locationList=['#dashboard','#taskDetails','#ongoingJoined','#taskLeadDetail','#newCallTask','#pipeline','#report','#leads','']
	if(locationList.includes(window.location.hash)||window.location.hash==null){
		NavigationService()
	}
}

// According to hash the page is appended in '.salesken_container' div.
function NavigationService(params){
	log("location---->>>>>>>>>>"+window.location.hash)
	switch(window.location.hash){
	case '#dashboard':
		if(params!=null){
			NavigateToOnHash('dashboard/dashboard.jsp?'+params.name+'='+params.value,'Salesken Dashboard','dashboard');
		}else{
			NavigateToOnHash('dashboard/dashboard.jsp','Salesken Dashboard','dashboard');
		}
		break;
	case '#taskDetails':
		NavigateToOnHash('taskDetails/taskDetail.jsp','Salesken - Task Details','taskDetails');
		break;
	case '#ongoingJoined':
		NavigateToOnHash("taskDetails/partials/ongoingJoined.jsp","Salesken - Create Task","ongoingJoined");
		break;
	case '#taskLeadDetail':
		NavigateToOnHash("taskDetails/task_lead_detail/task_lead_detail.jsp","Lead Detail","taskLeadDetail");
		break;
	case '#newCallTask':
		NavigateToOnHash("dashboard/partials/dashboardCreateTask.jsp","Salesken - Create Task","newCallTask");
		break;
	case '#pipeline':
		NavigateToOnHash("pipeline/pipeline.jsp","Salesken - Pipeline","pipeline");
		break;
	case '#report':
		NavigateToOnHash('report/report.jsp','Salesken - Reports','report');
		break;
	case '#leads':
		NavigateToOnHash('leads/leads.jsp','Salesken - Leads','leads');
		break;
	default:
		NavigateToOnHash('dashboard/dashboard.jsp','Salesken Dashboard','dashboard');
		navigator.mediaDevices.getUserMedia({ audio: true })
	    .then(function(stream) {
	    	
	    })
	    .catch(function(err) {
			alertify.error(' Your device does not have an active microphone!', 5);
	    });
		break;
	}
}

// Appending the specific pages html to the main div i.e.
// $('.salesken_container') and changing navbar css.
function NavigateToOnHash(pageURL,title,hash){
	$('.salesken-main-navbar').find('.nav-item.active').removeClass('active')
	$('.nav-item-'+hash).addClass('active')
	$.get(contextPath+pageURL,function(data){
		$('.salesken_container').html(data)
		$('title').html(title)
		window.location.hash=hash
	})
}


// function to call for navigation throughout website
// For e.g. instead of
// window.location.href='taskDetails/partials/ongoingJoined.jsp' simply replace
// it with NavigateTo('ongoingJoined') and add
// another case in Navigation service if not already there with the hash as a switch case
function NavigateTo(hash){
	if(('#'+hash)==window.location.hash){
		NavigationService()
	}
	window.location.hash=hash
}


// ------------------------------->

    





  


 function placeCall() {
    var customerPhone = '919566196911';

    activeTask = {};


    if (customerPhone.length < 20) {

      activeTask.toNumber = customerPhone;
      document.getElementById('contact').value = activeTask.toNumber;
      activeTask.start = new Date().getTime();
      activeTask.connectedTime = new Date().getTime();

      navigator.mediaDevices.getUserMedia({ audio: true })
        .then(function (stream) {
          tracks = stream.getTracks();
          tracks.forEach(function (track) {
            track.stop();
          });
          var options = {
            To: customerPhone, record: 'record-from-answer-dual', enableRingingState: true, //callerId: user_mobile
          };
          options.callerId = "+15597853253";

          activeTask.connection = device.connect(options);
        }).catch(function (err) {
          console.error(err);
          console.error(' Your device does not have an active microphone!', 1);
        });
    } else {
      console.error('Seems like an invalid number, please double check, ensure the country code is added');

    }

  }

 function endCall(){
    device.disconnectAll();
  }

function log(message){
	console.log(message);
}