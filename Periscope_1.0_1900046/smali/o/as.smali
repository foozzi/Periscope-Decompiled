.class Lo/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GY:Ljava/lang/String;

.field final synthetic GZ:Lo/ao;

.field final synthetic Ha:Lo/aq$if;

.field final synthetic Hb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/aq$if;Ljava/lang/String;Ljava/lang/String;Lo/ao;)V
    .locals 0

    iput-object p1, p0, Lo/as;->Ha:Lo/aq$if;

    iput-object p2, p0, Lo/as;->GY:Ljava/lang/String;

    iput-object p3, p0, Lo/as;->Hb:Ljava/lang/String;

    iput-object p4, p0, Lo/as;->GZ:Lo/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lo/as;->Ha:Lo/aq$if;

    invoke-static {v0}, Lo/aq$if;->ˊ(Lo/aq$if;)Lo/ᒴ$ˎ;

    move-result-object v0

    iget-object v1, p0, Lo/as;->GY:Ljava/lang/String;

    iget-object v2, p0, Lo/as;->Hb:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/ᒴ$ˎ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v0, p0, Lo/as;->GZ:Lo/ao;

    invoke-interface {v0, v3}, Lo/ao;->ᔈ(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "SignInClientImpl"

    const-string v1, "RemoteException thrown when processing uploadServerAuthCode callback"

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
