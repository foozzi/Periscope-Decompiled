.class public Lo/ږ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ɽ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ږ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u027d<Lo/\ufee3;Ljava/io/InputStream;>;"
    }
.end annotation


# instance fields
.field private final jP:Lo/ċ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u010b<Lo/\ufee3;Lo/\ufee3;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ږ;-><init>(Lo/ċ;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lo/ċ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u010b<Lo/\ufee3;Lo/\ufee3;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/ږ;->jP:Lo/ċ;

    .line 46
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ﻣ;II)Lo/Į;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufee3;II)Lo/\u012e<Ljava/io/InputStream;>;"
        }
    .end annotation

    .line 51
    move-object v3, p1

    .line 52
    iget-object v0, p0, Lo/ږ;->jP:Lo/ċ;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lo/ږ;->jP:Lo/ċ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lo/ċ;->ˏ(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﻣ;

    move-object v3, v0

    .line 54
    if-nez v3, :cond_0

    .line 55
    iget-object v0, p0, Lo/ږ;->jP:Lo/ċ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p1}, Lo/ċ;->ˊ(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 56
    move-object v3, p1

    .line 59
    :cond_0
    new-instance v0, Lo/ɭ;

    invoke-direct {v0, v3}, Lo/ɭ;-><init>(Lo/ﻣ;)V

    return-object v0
.end method

.method public synthetic ˎ(Ljava/lang/Object;II)Lo/Į;
    .locals 1

    .line 19
    move-object v0, p1

    check-cast v0, Lo/ﻣ;

    invoke-virtual {p0, v0, p2, p3}, Lo/ږ;->ˊ(Lo/ﻣ;II)Lo/Į;

    move-result-object v0

    return-object v0
.end method
