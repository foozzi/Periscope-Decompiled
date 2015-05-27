.class Lo/il;
.super Lo/ik$ˊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final LQ:Lo/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gk<*>;"
        }
    .end annotation
.end field

.field final synthetic LR:Lo/fl;

.field final synthetic LS:Ljava/lang/reflect/Field;

.field final synthetic LT:Lo/jy;

.field final synthetic LU:Z

.field final synthetic LV:Lo/ik;


# direct methods
.method constructor <init>(Lo/ik;Ljava/lang/String;ZZLo/fl;Ljava/lang/reflect/Field;Lo/jy;Z)V
    .locals 4

    .line 91
    iput-object p1, p0, Lo/il;->LV:Lo/ik;

    iput-object p5, p0, Lo/il;->LR:Lo/fl;

    iput-object p6, p0, Lo/il;->LS:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lo/il;->LT:Lo/jy;

    iput-boolean p8, p0, Lo/il;->LU:Z

    invoke-direct {p0, p2, p3, p4}, Lo/ik$ˊ;-><init>(Ljava/lang/String;ZZ)V

    .line 92
    iget-object v0, p0, Lo/il;->LV:Lo/ik;

    iget-object v1, p0, Lo/il;->LR:Lo/fl;

    iget-object v2, p0, Lo/il;->LS:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lo/il;->LT:Lo/jy;

    invoke-static {v0, v1, v2, v3}, Lo/ik;->ˊ(Lo/ik;Lo/fl;Ljava/lang/reflect/Field;Lo/jy;)Lo/gk;

    move-result-object v0

    iput-object v0, p0, Lo/il;->LQ:Lo/gk;

    return-void
.end method


# virtual methods
.method public ı(Ljava/lang/Object;)Z
    .locals 2

    .line 109
    iget-boolean v0, p0, Lo/il;->LX:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 110
    :cond_0
    iget-object v0, p0, Lo/il;->LS:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ˊ(Lo/jz;Ljava/lang/Object;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lo/il;->LQ:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    if-nez v1, :cond_0

    iget-boolean v0, p0, Lo/il;->LU:Z

    if-nez v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lo/il;->LS:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :cond_1
    return-void
.end method

.method ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 5

    .line 96
    iget-object v0, p0, Lo/il;->LS:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 97
    new-instance v4, Lo/iq;

    iget-object v0, p0, Lo/il;->LR:Lo/fl;

    iget-object v1, p0, Lo/il;->LQ:Lo/gk;

    iget-object v2, p0, Lo/il;->LT:Lo/jy;

    invoke-virtual {v2}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v4, v0, v1, v2}, Lo/iq;-><init>(Lo/fl;Lo/gk;Ljava/lang/reflect/Type;)V

    .line 99
    invoke-virtual {v4, p1, v3}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 100
    return-void
.end method
