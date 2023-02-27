defmodule SurveyLiveWeb.Emails do
  @moduledoc """
  This viewmodule is responsible for rendering the emails and the layouts
  for emails using the Phoenix.Swoosh library

  Can be used in the notifier by adding:

      use Phoenix.Swoosh, view: SurveyLiveWeb.Emails, layout: {SurveyLiveWeb.Emails, :layout}

  """
  use Phoenix.View,
    root: "lib/survey_live_web",
    namespace: SurveyLiveWeb

  use Phoenix.Component

  import SurveyLiveWeb.AppInfo
end
