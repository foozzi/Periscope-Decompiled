.class Lo/bp;
.super Lo/cu$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HU:Lo/bo$if;

.field final synthetic HV:Lo/bo;


# direct methods
.method constructor <init>(Lo/bo;Lo/bo$if;)V
    .locals 0

    iput-object p1, p0, Lo/bp;->HV:Lo/bo;

    iput-object p2, p0, Lo/bp;->HU:Lo/bo$if;

    invoke-direct {p0}, Lo/cu$if;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/dt;)Z
    .locals 2

    iget-object v0, p0, Lo/bp;->HU:Lo/bo$if;

    new-instance v1, Lo/dh;

    invoke-direct {v1, p1}, Lo/dh;-><init>(Lo/dt;)V

    invoke-interface {v0, v1}, Lo/bo$if;->ˊ(Lo/dh;)Z

    move-result v0

    return v0
.end method
