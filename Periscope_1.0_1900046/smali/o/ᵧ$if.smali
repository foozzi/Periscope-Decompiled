.class Lo/ᵧ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᵧ$ˏ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᵧ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/view/MotionEvent;I)I
    .locals 1

    .line 47
    if-nez p2, :cond_0

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public ˋ(Landroid/view/MotionEvent;I)I
    .locals 2

    .line 55
    if-nez p2, :cond_0

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˎ(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 63
    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˎ(Landroid/view/MotionEvent;)I
    .locals 1

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public ˏ(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 70
    if-nez p2, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Pre-Eclair does not support multiple pointers"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
