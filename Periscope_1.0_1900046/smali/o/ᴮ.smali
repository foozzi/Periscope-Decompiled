.class final Lo/ᴮ;
.super Lo/ᴧ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/ᴧ;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "AT_LEAST.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method

.method protected ʽ(IIII)I
    .locals 2

    .line 41
    div-int v0, p2, p4

    div-int v1, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
