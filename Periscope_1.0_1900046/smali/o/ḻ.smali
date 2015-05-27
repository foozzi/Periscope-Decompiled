.class public Lo/ḻ;
.super Lo/ｼ;
.source ""

# interfaces
.implements Lo/ṟ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\uff7c<Lo/\ufb86;Lo/\u0694<*>;>;Lo/\u1e5f;"
    }
.end annotation


# instance fields
.field private jd:Lo/ṟ$if;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lo/ｼ;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ṟ$if;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/ḻ;->jd:Lo/ṟ$if;

    .line 27
    return-void
.end method

.method protected ˊ(Lo/ﮆ;Lo/ڔ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb86;Lo/\u0694<*>;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lo/ḻ;->jd:Lo/ṟ$if;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lo/ḻ;->jd:Lo/ṟ$if;

    invoke-interface {v0, p2}, Lo/ṟ$if;->ʻ(Lo/ڔ;)V

    .line 34
    :cond_0
    return-void
.end method

.method public synthetic ˋ(Lo/ﮆ;Lo/ڔ;)Lo/ڔ;
    .locals 1

    .line 12
    invoke-super {p0, p1, p2}, Lo/ｼ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ڔ;

    return-object v0
.end method

.method public synthetic ͺ(Lo/ﮆ;)Lo/ڔ;
    .locals 1

    .line 12
    invoke-super {p0, p1}, Lo/ｼ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ڔ;

    return-object v0
.end method

.method protected synthetic ᐝ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 12
    move-object v0, p1

    check-cast v0, Lo/ﮆ;

    move-object v1, p2

    check-cast v1, Lo/ڔ;

    invoke-virtual {p0, v0, v1}, Lo/ḻ;->ˊ(Lo/ﮆ;Lo/ڔ;)V

    return-void
.end method

.method protected synthetic ᐣ(Ljava/lang/Object;)I
    .locals 1

    .line 12
    move-object v0, p1

    check-cast v0, Lo/ڔ;

    invoke-virtual {p0, v0}, Lo/ḻ;->ι(Lo/ڔ;)I

    move-result v0

    return v0
.end method

.method protected ι(Lo/ڔ;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<*>;)I"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Lo/ڔ;->getSize()I

    move-result v0

    return v0
.end method

.method public ﹼ(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 44
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lo/ḻ;->ᒪ()V

    goto :goto_0

    .line 48
    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lo/ḻ;->丿()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lo/ḻ;->trimToSize(I)V

    .line 53
    :cond_1
    :goto_0
    return-void
.end method
