.class Lo/ć;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final nn:Ljava/lang/String;

.field private final no:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/ć;->nn:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lo/ć;->no:Z

    .line 26
    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lo/ć;->nn:Ljava/lang/String;

    invoke-static {v0}, Lo/qh;->ՙ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/ć;->no:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, p1, p2}, Lo/ć;->ˋ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    const-string v0, "Fabric"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v0, "Fabric"

    const-string v1, ".     |  | "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v0, "Fabric"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v0, "Fabric"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "Fabric"

    const-string v1, ".   \\ |  | /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "Fabric"

    const-string v1, ".    \\    /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v0, "Fabric"

    const-string v1, ".     \\  /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "Fabric"

    const-string v1, ".      \\/"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "Fabric"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "Fabric"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "Fabric"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "Fabric"

    const-string v1, ".      /\\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "Fabric"

    const-string v1, ".     /  \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v0, "Fabric"

    const-string v1, ".    /    \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v0, "Fabric"

    const-string v1, ".   / |  | \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v0, "Fabric"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "Fabric"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "Fabric"

    const-string v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v0, "Fabric"

    const-string v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lo/ڈ;

    invoke-direct {v0, v3}, Lo/ڈ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-boolean v0, p0, Lo/ć;->no:Z

    if-nez v0, :cond_1

    .line 61
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Configured not to require a build ID."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    return-void
.end method

.method protected ˋ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    return-object v0
.end method
