.class public Lo/ч;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ɽ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u027d<Ljava/net/URL;TT;>;"
    }
.end annotation


# instance fields
.field private final jO:Lo/ɽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u027d<Lo/\ufee3;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ɽ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u027d<Lo/\ufee3;TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lo/ч;->jO:Lo/ɽ;

    .line 19
    return-void
.end method


# virtual methods
.method public ˊ(Ljava/net/URL;II)Lo/Į;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/net/URL;II)Lo/\u012e<TT;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lo/ч;->jO:Lo/ɽ;

    new-instance v1, Lo/ﻣ;

    invoke-direct {v1, p1}, Lo/ﻣ;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3}, Lo/ɽ;->ˎ(Ljava/lang/Object;II)Lo/Į;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˎ(Ljava/lang/Object;II)Lo/Į;
    .locals 1

    .line 14
    move-object v0, p1

    check-cast v0, Ljava/net/URL;

    invoke-virtual {p0, v0, p2, p3}, Lo/ч;->ˊ(Ljava/net/URL;II)Lo/Į;

    move-result-object v0

    return-object v0
.end method
