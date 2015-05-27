.class Lo/aes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bAQ:Lo/aek;

.field final synthetic bAR:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lo/aek;Ljava/lang/Exception;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lo/aes;->bAQ:Lo/aek;

    iput-object p2, p0, Lo/aes;->bAR:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 522
    iget-object v0, p0, Lo/aes;->bAQ:Lo/aek;

    invoke-static {v0}, Lo/aek;->ˏ(Lo/aek;)Lo/aek$if;

    move-result-object v0

    iget-object v1, p0, Lo/aes;->bAR:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lo/aek$if;->ᐝ(Ljava/lang/Exception;)V

    .line 523
    return-void
.end method
