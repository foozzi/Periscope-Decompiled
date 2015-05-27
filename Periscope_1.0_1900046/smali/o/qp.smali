.class Lo/qp;
.super Lo/qg;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic VU:Lo/qo;

.field final synthetic nU:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/qo;Ljava/lang/Runnable;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/qp;->VU:Lo/qo;

    iput-object p2, p0, Lo/qp;->nU:Ljava/lang/Runnable;

    invoke-direct {p0}, Lo/qg;-><init>()V

    return-void
.end method


# virtual methods
.method public ᔮ()V
    .locals 1

    .line 58
    iget-object v0, p0, Lo/qp;->nU:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 59
    return-void
.end method
