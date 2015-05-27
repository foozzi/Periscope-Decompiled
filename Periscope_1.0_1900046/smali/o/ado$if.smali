.class Lo/ado$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ado;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic byL:Lo/ado;


# direct methods
.method private constructor <init>(Lo/ado;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/ado$if;->byL:Lo/ado;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ado;Lo/ado$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lo/ado$if;-><init>(Lo/ado;)V

    return-void
.end method

.method private logout()V
    .locals 4

    .line 93
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lo/ado$if;->byL:Lo/ado;

    const-class v1, Ltv/periscope/android/LaunchActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const v0, 0x4008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 96
    const-string v0, "action_logout"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lo/ado$if;->byL:Lo/ado;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Lo/ado;->setResult(ILandroid/content/Intent;)V

    .line 98
    iget-object v0, p0, Lo/ado$if;->byL:Lo/ado;

    invoke-virtual {v0}, Lo/ado;->finish()V

    .line 99
    iget-object v0, p0, Lo/ado$if;->byL:Lo/ado;

    invoke-virtual {v0, v2}, Lo/ado;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lo/aaj;)V
    .locals 3

    .line 77
    sget-object v0, Lo/ado$1;->byK:[I

    invoke-virtual {p1}, Lo/aaj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 79
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received OnUnauthroizedLogout event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/ɬ;->ˋ(Ljava/lang/Throwable;)V

    .line 80
    iget-object v0, p0, Lo/ado$if;->byL:Lo/ado;

    const v1, 0x7f060092

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    invoke-direct {p0}, Lo/ado$if;->logout()V

    .line 82
    goto :goto_0

    .line 85
    :sswitch_1
    iget-object v0, p0, Lo/ado$if;->byL:Lo/ado;

    const v1, 0x7f060024

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    invoke-direct {p0}, Lo/ado$if;->logout()V

    .line 90
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method
