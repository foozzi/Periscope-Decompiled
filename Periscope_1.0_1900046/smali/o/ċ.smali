.class public Lo/ċ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ċ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:Ljava/lang/Object;B:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final jJ:Lo/ｼ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\uff7c<Lo/\u010b$if<TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lo/ċ;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lo/ĩ;

    invoke-direct {v0, p0, p1}, Lo/ĩ;-><init>(Lo/ċ;I)V

    iput-object v0, p0, Lo/ċ;->jJ:Lo/ｼ;

    .line 32
    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 59
    invoke-static {p1, p2, p3}, Lo/ċ$if;->ᐝ(Ljava/lang/Object;II)Lo/ċ$if;

    move-result-object v1

    .line 60
    iget-object v0, p0, Lo/ċ;->jJ:Lo/ｼ;

    invoke-virtual {v0, v1, p4}, Lo/ｼ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public ˏ(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 44
    invoke-static {p1, p2, p3}, Lo/ċ$if;->ᐝ(Ljava/lang/Object;II)Lo/ċ$if;

    move-result-object v1

    .line 45
    iget-object v0, p0, Lo/ċ;->jJ:Lo/ｼ;

    invoke-virtual {v0, v1}, Lo/ｼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    invoke-virtual {v1}, Lo/ċ$if;->release()V

    .line 47
    return-object v2
.end method
