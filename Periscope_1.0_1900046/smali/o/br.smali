.class Lo/br;
.super Lo/ct$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Im:Lo/bt;

.field final synthetic In:Lo/bq$if;


# direct methods
.method constructor <init>(Lo/bq$if;Lo/bt;)V
    .locals 0

    iput-object p1, p0, Lo/br;->In:Lo/bq$if;

    iput-object p2, p0, Lo/br;->Im:Lo/bt;

    invoke-direct {p0}, Lo/ct$if;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/bw;)V
    .locals 2

    iget-object v0, p0, Lo/br;->Im:Lo/bt;

    new-instance v1, Lo/bo;

    invoke-direct {v1, p1}, Lo/bo;-><init>(Lo/bw;)V

    invoke-interface {v0, v1}, Lo/bt;->ˊ(Lo/bo;)V

    return-void
.end method
