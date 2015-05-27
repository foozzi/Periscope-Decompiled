.class public abstract Lo/ani;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(JII)Lo/ani;
    .locals 1

    .line 11
    new-instance v0, Lo/anc;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/anc;-><init>(JII)V

    return-object v0
.end method


# virtual methods
.method public abstract BX()J
.end method

.method public abstract BY()I
.end method

.method public abstract BZ()I
.end method

.method public Cd()F
    .locals 2

    .line 25
    invoke-virtual {p0}, Lo/ani;->BY()I

    move-result v0

    if-lez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lo/ani;->BZ()I

    move-result v0

    invoke-virtual {p0}, Lo/ani;->BY()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    return v0

    .line 28
    :cond_0
    const/high16 v0, 0x7fc00000    # NaNf

    return v0
.end method
