.class Lo/vp;
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
.field final synthetic bnL:Lo/aam;

.field final synthetic bnM:Lo/vn$if;


# direct methods
.method constructor <init>(Lo/vn$if;Lo/aam;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lo/vp;->bnM:Lo/vn$if;

    iput-object p2, p0, Lo/vp;->bnL:Lo/aam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 503
    iget-object v0, p0, Lo/vp;->bnM:Lo/vn$if;

    iget-object v0, v0, Lo/vn$if;->bnJ:Lo/vn;

    invoke-static {v0}, Lo/vn;->ˏ(Lo/vn;)Lo/acx;

    move-result-object v0

    iget-object v1, p0, Lo/vp;->bnL:Lo/aam;

    iget-object v1, v1, Lo/aam;->buh:Lo/vq;

    invoke-virtual {v0, v1}, Lo/acx;->ˏ(Ljava/lang/Runnable;)Ljava/lang/String;

    .line 504
    return-void
.end method
