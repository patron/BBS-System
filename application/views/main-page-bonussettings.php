<main class="app-content">

<div class="app-title">
    <div>
        <h1><i class="fa fa-edit"></i> Set new Post</h1>
        <p>Post dashboard</p>
    </div>
    <ul class="app-breadcrumb breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-edit"></i></li>
        <li class="breadcrumb-item"><a href="#">Post Settings</a></li>
    </ul>
</div>

<div class="tile">
    <div class="row">
        <div class="col-lg-12">
            <form>
                <fieldset class="form-group">
                    <legend>Post counting criteria</legend>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" id="optionsRadios1" type="radio" name="optionsRadios" value="option1" checked="">Most of tasks are completed (75%)
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" id="optionsRadios2" type="radio" name="optionsRadios" value="option2">Project has been released
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" id="optionsRadios2" type="radio" name="optionsRadios" value="option2">All tasks and projects are completed
                        </label>
                    </div>
                </fieldset>

                <div class="form-group">
                    <label for="exampleSelect1">Maximum days of deadline break</label>
                    <select class="form-control" id="exampleSelect1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleSelect1">Bonuses For Ended Project</label>
                    <select class="form-control" id="exampleSelect1">
                        <option>25</option>
                        <option>50</option>
                        <option>75</option>
                        <option>100</option>
                        <option>200</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleSelect2">Bonuses For Ended Task</label>
                    <select class="form-control" id="exampleSelect2" multiple="">
                        <option>0.25</option>
                        <option>0.5</option>
                        <option>0.75</option>
                        <option>1</option>
                        <option>1.5</option>
                    </select>
                </div>

                <p><b>Start counting bonuses</b></p>
                <div class="toggle-flip">
                    <label>
                        <input type="checkbox"><span class="flip-indecator" data-toggle-on="ON" data-toggle-off="OFF"></span>
                    </label>
                </div>
                <div class="form-group">
                    <label for="exampleTextarea">Write new rules to users</label>
                    <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputFile">Send new users rules file</label>
                    <input class="form-control-file" id="exampleInputFile" type="file" aria-describedby="fileHelp"><small class="form-text text-muted" id="fileHelp">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
                </div>
                <div class="form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox">Save all settings
                    </label>
                </div>
            </form>
        </div>
    </div>
    <div class="tile-footer">
        <button class="btn btn-primary" type="submit">Submit</button>
    </div>
</div>
</main>