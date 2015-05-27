.class public Lo/vr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bnT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<Lo/aai$if;>;"
        }
    .end annotation
.end field

.field private final bnU:Lo/vn$ˊ;

.field private bnV:I


# direct methods
.method public constructor <init>(Lo/vn$ˊ;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/vr;->bnT:Ljava/util/HashSet;

    .line 19
    iput-object p1, p0, Lo/vr;->bnU:Lo/vn$ˊ;

    .line 20
    return-void
.end method

.method private ˋ(Lo/aam;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lo/vr;->bnU:Lo/vn$ˊ;

    invoke-interface {v0, p1}, Lo/vn$ˊ;->ˊ(Lo/aam;)V

    .line 60
    return-void
.end method

.method private ˎ(Lo/aai;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/vr;->bnU:Lo/vn$ˊ;

    invoke-interface {v0, p1}, Lo/vn$ˊ;->ˊ(Lo/aai;)V

    .line 52
    return-void
.end method

.method private ﱠ(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lo/vr;->bnU:Lo/vn$ˊ;

    invoke-interface {v0, p1}, Lo/vn$ˊ;->ﮅ(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lo/aai;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lo/vr;->bnT:Ljava/util/HashSet;

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget v0, p0, Lo/vr;->bnV:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/vr;->bnV:I

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lo/vr;->ˎ(Lo/aai;)V

    .line 40
    iget-object v0, p0, Lo/vr;->bnT:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget v0, p0, Lo/vr;->bnV:I

    invoke-direct {p0, v0}, Lo/vr;->ﱠ(I)V

    .line 44
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lo/aam;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/vr;->ˋ(Lo/aam;)V

    .line 31
    return-void
.end method

.method public varargs ˊ([Lo/aai$if;)Lo/vr;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/vr;->bnT:Ljava/util/HashSet;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lo/vr;->bnT:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lo/vr;->bnV:I

    .line 25
    return-object p0
.end method
