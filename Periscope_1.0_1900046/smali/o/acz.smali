.class public Lo/acz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final blm:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "tv.periscope"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lo/acz;->blm:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method


# virtual methods
.method public wS()Lo/acy;
    .locals 8

    .line 35
    new-instance v0, Lo/acy;

    iget-object v1, p0, Lo/acz;->blm:Landroid/content/SharedPreferences;

    const-string v2, "notif_followed_live"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lo/acz;->blm:Landroid/content/SharedPreferences;

    const-string v3, "notif_followed_shared"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lo/acz;->blm:Landroid/content/SharedPreferences;

    const-string v4, "notif_user_follows_you"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lo/acz;->blm:Landroid/content/SharedPreferences;

    const-string v5, "notif_suggested_first"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lo/acz;->blm:Landroid/content/SharedPreferences;

    const-string v6, "notif_autosave"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lo/acy;-><init>(ZZZZZ)V

    return-object v0
.end method

.method public ˊ(Lo/acy;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lo/acz;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notif_followed_live"

    iget-boolean v2, p1, Lo/acy;->byh:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notif_followed_shared"

    iget-boolean v2, p1, Lo/acy;->byi:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notif_user_follows_you"

    iget-boolean v2, p1, Lo/acy;->byj:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notif_suggested_first"

    iget-boolean v2, p1, Lo/acy;->byk:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notif_autosave"

    iget-boolean v2, p1, Lo/acy;->byl:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    return-void
.end method
