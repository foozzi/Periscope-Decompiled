.class Lo/aci;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final blm:Landroid/content/SharedPreferences;

.field private final bny:Lo/ot;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ot;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/aci;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lo/aci;->bny:Lo/ot;

    .line 23
    iput-object p3, p0, Lo/aci;->blm:Landroid/content/SharedPreferences;

    .line 25
    iget-object v0, p0, Lo/aci;->bny:Lo/ot;

    invoke-virtual {v0, p0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lo/acj;)V
    .locals 3

    .line 75
    const-string v0, "GcmRegistrar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received GcmRegistrationEvent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lo/acj;->bxI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p1, Lo/acj;->bxI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lo/aci;->ĭ(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onEventMainThread(Lo/ack;)V
    .locals 2

    .line 80
    const-string v0, "GcmRegistrar"

    const-string v1, "Received GcmUnregistrationEvent"

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lo/aci;->wL()V

    .line 82
    return-void
.end method

.method public wK()Ljava/lang/String;
    .locals 6

    .line 36
    iget-object v0, p0, Lo/aci;->blm:Landroid/content/SharedPreferences;

    const-string v1, "registration_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "GcmRegistrar"

    const-string v1, "Registration not found."

    invoke-static {v0, v1}, Lo/akk;->ـ(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, ""

    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lo/aci;->blm:Landroid/content/SharedPreferences;

    const-string v1, "app_version"

    const/high16 v2, -0x80000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 45
    iget-object v0, p0, Lo/aci;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/akn;->ᐤ(Landroid/content/Context;)I

    move-result v5

    .line 46
    if-eq v4, v5, :cond_1

    .line 47
    const-string v0, "GcmRegistrar"

    const-string v1, "App version changed."

    invoke-static {v0, v1}, Lo/akk;->ـ(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, ""

    return-object v0

    .line 50
    :cond_1
    return-object v3
.end method

.method public wL()V
    .locals 2

    .line 68
    iget-object v0, p0, Lo/aci;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "registration_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void
.end method

.method public ĭ(Ljava/lang/String;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lo/aci;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/akn;->ᐤ(Landroid/content/Context;)I

    move-result v2

    .line 61
    iget-object v0, p0, Lo/aci;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "registration_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    return-void
.end method
