 <?php
$op = filter_input(INPUT_GET, "view");
//$db->debug=1;

   $rand = md5(mt_rand());
   $addUrl = "?app=$app&mod=$mod&view=add&ptype=temp&sk=$rand";
   $listUrl = "?app=$app&mod=$mod&view=list&ptype=temp&sk=$rand";

  if ($op == "add") {
    $S_ROWID = "";
    $cid = "";
   
    $btn = "<button type='submit' name='btnSaveRecord' id='btnSaveRecord' class='btn btn-sm btn-success' value='$TableName'><i class='fa fa-edit'></i> Save Record</button>";
    $getColumns = $db->metaColumnNames($TableName);
    foreach ($getColumns as $key => $value) {
       $rst[$value] = "";  
    }
  }
  else
  {
 $cid = filter_input(INPUT_GET, "cid");
$rst = $rs->row($TableName,"S_ROWID='$cid'");
  $arg = array_filter($rst);
    if (empty($arg)) {
      include("assets/pages/404.php");
      exit();
    }
$S_ROWID = "<input type='hidden' name='S_ROWID' id='S_ROWID' value='$cid'>";
$btn = "<button type='submit' name='btnUpdateRecord' id='btnUpdateRecord' class='btn btn-sm btn-success' value='$TableName'><i class='fa fa-edit'></i> Update Record</button>";
   
  }
  
  ?>
 <script type="text/javascript">
$(document).ready(function() {
    var op = $("#op").val();

    $("#frmPageTemp").validate({
        debug: false,
        rules: {

        },
        messages: {

        },
        submitHandler: function(form) {
            // do other stuff for a valid form

            $.post('assets/bin/ManageRecords.php', $("#frmPageTemp").serialize(),
                function(data) {
                    if (data.length < 30) {

                        if (op == "add") {
                            var urlstr = $("#url").val();
                            var url = urlstr.replace("view=add&", "view=edit&cid=" + data +
                                "&");
                            $(window.location).attr('href', "?" + url);
                        } else {
                            location.reload();
                        }
                    } else {
                        alert(data);

                    }
                });
        }
    });
});
 </script>
 <input type="hidden" name="op" id="op" value="<?php echo $op;?>">
 <input type="hidden" name="url" id="url" value="<?php echo full_path();?>">

 <div class="widget-box">
     <div class="widget-header widget-header-flat">
         <h4 class="widget-title smaller">
             <i class="ace-icon fa fa-list smaller-80"></i>
             <?php echo $modName;?>
         </h4>
         <div id="pageToolBar" class="widget-toolbar no-border">
             <a href="<?php echo $addUrl; ?>" class="btn btn-xs btn-info  radius-4 bigger"> <i
                     class="ace-icon fa fa-plus bigger-80"></i> Add New </a>
             <a href="<?php echo $listUrl;?>" class="btn btn-xs btn-info  radius-4 bigger"> <i
                     class="ace-icon fa fa-arrow-left bigger-80"></i> Back to List </a>

         </div>
     </div>
     <form name="frmPageTemp" id="frmPageTemp" class="form-horizontal" role="form">
         <input type="hidden" name="ModCode" id="ModCode" value="<?php echo $mod;?>">
         <input type="hidden" name="ReturnType" id="ReturnType" value="RstID">
         <?php echo $S_ROWID;?>
         <div class="widget-body">
             <div class="widget-main">

                 <div class="row">
                     <div class="form-group col-sm-5">
                         <label class="col-sm-4 control-label " for="name"> Room Name </label>
                         <div class="col-sm-8">
                             <input type="text" id="name" name="name" placeholder="Enter Room Name"
                                 class="col-xs-12 col-sm-12" value="<?php echo $rst['name'];?>" required="true" />
                         </div>
                     </div>
                     <div class="form-group col-sm-5">
                         <label class="col-sm-4 control-label " for="link"> Room Link </label>
                         <div class="col-sm-8">
                             <input type="text" id="link" name="link" placeholder="Ex. 12345"
                                 class="col-xs-12 col-sm-12" value="<?php echo $rst['link'];?>" required="true" />
                         </div>
                     </div>
                     <div class="form-group col-sm-5">
                         <label class="col-sm-4 control-label " for="Password"> Room Password </label>
                         <div class="col-sm-8">
                             <input type="password" id="Password" name="Password" placeholder="Enter room password"
                                 class="col-xs-12 col-sm-12" value="<?php echo $rst['Password'];?>" required="true" />
                         </div>
                     </div>
                     <div class="form-group col-sm-5">
                         <label class="col-sm-4 control-label " for="ScheduleDate"> Schedule On </label>
                         <div class="col-sm-8">
                             <div class="input-group col-xs-12 col-sm-12">
                                 <input class="date-picker form-control" id="ScheduleDate" name="ScheduleDate"
                                     type="text" placeholder="dd-mm-yyyy" value="<?php echo $rst['ScheduleDate'];?>"
                                     required="true" />
                                 <span class="input-group-addon">
                                     <i class="ace-icon fa fa-calendar"></i>
                                 </span>
                             </div>
                         </div>
                     </div>
                     <!-- <div class="form-group col-sm-5">
                         <label class="col-sm-4 control-label " for="CreatedBy"> CreatedBy </label>
                         <div class="col-sm-8">
                             <input type="text" id="CreatedBy" name="CreatedBy" placeholder="Enter M"
                                 class="col-xs-12 col-sm-12" value="<?php echo $rst['CreatedBy'];?>" required="true" />
                         </div>
                     </div> -->
                     <!-- <div class="form-group col-sm-5">
                         <label class="col-sm-4 control-label " for="ModifiedBy"> ModifiedBy </label>
                         <div class="col-sm-8">
                             <input type="text" id="ModifiedBy" name="ModifiedBy" placeholder="Enter ModifiedBy"
                                 class="col-xs-11 col-sm-11" value="<?php echo $rst['ModifiedBy'];?>" required="true" />
                         </div>
                     </div> -->
                 </div>


             </div><!-- End Widget-Main -->
             <div class="widget-toolbox padding-8 clearfix text-center">
                 <?php echo $btn; ?>
             </div>
         </div><!-- End Widget-body -->

     </form>
 </div><!-- End WidgetBox -->