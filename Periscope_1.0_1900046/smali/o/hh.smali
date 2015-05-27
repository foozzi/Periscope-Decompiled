.class Lo/hh;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic KW:Z

.field final synthetic KX:Z

.field final synthetic KY:Lo/fl;

.field final synthetic KZ:Lo/jy;

.field private Kh:Lo/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gk<TT;>;"
        }
    .end annotation
.end field

.field final synthetic La:Lo/hg;


# direct methods
.method constructor <init>(Lo/hg;ZZLo/fl;Lo/jy;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lo/hh;->La:Lo/hg;

    iput-boolean p2, p0, Lo/hh;->KW:Z

    iput-boolean p3, p0, Lo/hh;->KX:Z

    iput-object p4, p0, Lo/hh;->KY:Lo/fl;

    iput-object p5, p0, Lo/hh;->KZ:Lo/jy;

    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method

.method private y()Lo/gk;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/gk<TT;>;"
        }
    .end annotation

    .line 141
    iget-object v3, p0, Lo/hh;->Kh:Lo/gk;

    .line 142
    if-eqz v3, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/hh;->KY:Lo/fl;

    iget-object v1, p0, Lo/hh;->La:Lo/hg;

    iget-object v2, p0, Lo/hh;->KZ:Lo/jy;

    invoke-virtual {v0, v1, v2}, Lo/fl;->ˊ(Lo/gl;Lo/jy;)Lo/gk;

    move-result-object v0

    iput-object v0, p0, Lo/hh;->Kh:Lo/gk;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/kc;TT;)V"
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lo/hh;->KX:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 135
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lo/hh;->y()Lo/gk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jz;)TT;"
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lo/hh;->KW:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lo/jz;->skipValue()V

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    invoke-direct {p0}, Lo/hh;->y()Lo/gk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
