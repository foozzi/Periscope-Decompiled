.class public final Lo/hw;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:Ljava/lang/Object;>Lo/gk<Ljava/lang/Object;>;"
    }
.end annotation


# static fields
.field public static final LA:Lo/gl;


# instance fields
.field private final LB:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<TE;>;"
        }
    .end annotation
.end field

.field private final LC:Lo/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gk<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lo/hx;

    invoke-direct {v0}, Lo/hx;-><init>()V

    sput-object v0, Lo/hw;->LA:Lo/gl;

    return-void
.end method

.method public constructor <init>(Lo/fl;Lo/gk;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/fl;Lo/gk<TE;>;Ljava/lang/Class<TE;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lo/gk;-><init>()V

    .line 58
    new-instance v0, Lo/iq;

    invoke-direct {v0, p1, p2, p3}, Lo/iq;-><init>(Lo/fl;Lo/gk;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lo/hw;->LC:Lo/gk;

    .line 60
    iput-object p3, p0, Lo/hw;->LB:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 4

    .line 85
    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 87
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lo/kc;->P()Lo/kc;

    .line 91
    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 92
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 93
    iget-object v0, p0, Lo/hw;->LC:Lo/gk;

    invoke-virtual {v0, p1, v3}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lo/kc;->Q()Lo/kc;

    .line 96
    return-void
.end method

.method public ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 5

    .line 64
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p1}, Lo/jz;->beginArray()V

    .line 71
    :goto_0
    invoke-virtual {p1}, Lo/jz;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lo/hw;->LC:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v3

    .line 73
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Lo/jz;->endArray()V

    .line 76
    iget-object v0, p0, Lo/hw;->LB:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 77
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 78
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    :cond_2
    return-object v3
.end method
