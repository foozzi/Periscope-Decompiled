.class public Ltv/periscope/android/LaunchActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private bll:Lo/acm;

.field private blm:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private ˊ(Lo/acn;)V
    .locals 2

    .line 65
    invoke-virtual {p1}, Lo/acn;->wP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/LaunchActivity;->blm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Ltv/periscope/android/LaunchActivity;->ˋ(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/16 v0, 0x2328

    invoke-virtual {p1, p0, v0}, Lo/acn;->ˋ(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    .line 67
    new-instance v0, Lo/ve;

    invoke-direct {v0, p0}, Lo/ve;-><init>(Ltv/periscope/android/LaunchActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 74
    iget-object v0, p0, Ltv/periscope/android/LaunchActivity;->blm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Ltv/periscope/android/LaunchActivity;->ˎ(Landroid/content/SharedPreferences;)V

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const-class v0, Ltv/periscope/android/ui/main/MainActivity;

    invoke-direct {p0, v0}, Ltv/periscope/android/LaunchActivity;->ﾞ(Ljava/lang/Class;)V

    .line 78
    :goto_0
    return-void
.end method

.method public static synthetic ˊ(Ltv/periscope/android/LaunchActivity;Ljava/lang/Class;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Ltv/periscope/android/LaunchActivity;->ﾞ(Ljava/lang/Class;)V

    return-void
.end method

.method private ˋ(Landroid/content/SharedPreferences;)Z
    .locals 5

    .line 81
    const-string v0, "error_dialog_shown"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 82
    const-string v0, "app_version"

    const/high16 v1, -0x80000000

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 83
    invoke-static {p0}, Lo/akn;->ᐤ(Landroid/content/Context;)I

    move-result v4

    .line 84
    if-eqz v2, :cond_0

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ˎ(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 88
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "error_dialog_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_version"

    invoke-static {p0}, Lo/akn;->ᐤ(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    return-void
.end method

.method private ˏ(Landroid/content/SharedPreferences;)Z
    .locals 2

    .line 95
    const-string v0, "walkthrough_shown"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᐝ(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 99
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "walkthrough_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    return-void
.end method

.method private ﾞ(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Class<*>;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ltv/periscope/android/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Ltv/periscope/android/LaunchActivity;->finish()V

    .line 62
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-object v0, Lo/vi$if;->bna:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 39
    invoke-static {}, Lo/vf;->tK()Lo/acm;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/LaunchActivity;->bll:Lo/acm;

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/periscope/android/LaunchActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/LaunchActivity;->blm:Landroid/content/SharedPreferences;

    .line 42
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    invoke-virtual {v0}, Lo/aad;->vl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/LaunchActivity;->bll:Lo/acm;

    invoke-virtual {v0}, Lo/acm;->ژ()V

    .line 46
    const-class v0, Ltv/periscope/android/ui/main/MainActivity;

    invoke-direct {p0, v0}, Ltv/periscope/android/LaunchActivity;->ﾞ(Ljava/lang/Class;)V
    :try_end_0
    .catch Lo/acn; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    const-string v0, "LaunchActivity"

    const-string v1, "Failed to register push."

    invoke-static {v0, v1, v2}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    invoke-direct {p0, v2}, Ltv/periscope/android/LaunchActivity;->ˊ(Lo/acn;)V

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/LaunchActivity;->blm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Ltv/periscope/android/LaunchActivity;->ˏ(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-class v0, Lo/ajd;

    invoke-direct {p0, v0}, Ltv/periscope/android/LaunchActivity;->ﾞ(Ljava/lang/Class;)V

    .line 53
    iget-object v0, p0, Ltv/periscope/android/LaunchActivity;->blm:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Ltv/periscope/android/LaunchActivity;->ᐝ(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 55
    :cond_1
    const-class v0, Lo/aiz;

    invoke-direct {p0, v0}, Ltv/periscope/android/LaunchActivity;->ﾞ(Ljava/lang/Class;)V

    .line 57
    :goto_0
    return-void
.end method
