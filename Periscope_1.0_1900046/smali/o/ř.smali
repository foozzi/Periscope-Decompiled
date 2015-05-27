.class public Lo/ř;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ڔ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u0694<Lo/\u0138;>;"
    }
.end annotation


# instance fields
.field private final ln:Lo/ĸ;


# direct methods
.method public constructor <init>(Lo/ĸ;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lo/ř;->ln:Lo/ĸ;

    .line 19
    return-void
.end method


# virtual methods
.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lo/ř;->ٲ()Lo/ĸ;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 28
    iget-object v0, p0, Lo/ř;->ln:Lo/ĸ;

    invoke-virtual {v0}, Lo/ĸ;->getSize()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 3

    .line 33
    iget-object v0, p0, Lo/ř;->ln:Lo/ĸ;

    invoke-virtual {v0}, Lo/ĸ;->ԇ()Lo/ڔ;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1}, Lo/ڔ;->recycle()V

    .line 37
    :cond_0
    iget-object v0, p0, Lo/ř;->ln:Lo/ĸ;

    invoke-virtual {v0}, Lo/ĸ;->ה()Lo/ڔ;

    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    invoke-interface {v2}, Lo/ڔ;->recycle()V

    .line 41
    :cond_1
    return-void
.end method

.method public ٲ()Lo/ĸ;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/ř;->ln:Lo/ĸ;

    return-object v0
.end method
