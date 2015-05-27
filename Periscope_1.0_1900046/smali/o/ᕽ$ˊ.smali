.class Lo/ᕽ$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᕽ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᕽ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    .line 43
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method public ˋ(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    .line 48
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0
.end method
