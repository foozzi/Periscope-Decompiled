.class public Lo/oe;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Sc:Lo/nu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScribeClient()Lo/nu;
    .locals 1

    .line 21
    sget-object v0, Lo/oe;->Sc:Lo/nu;

    return-object v0
.end method

.method public static ˊ(Lo/mn;Ljava/util/List;Lo/qr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mn;Ljava/util/List<Lo/mh<+Lo/mg;>;>;Lo/qr;)V"
        }
    .end annotation

    .line 29
    new-instance v0, Lo/nu;

    const-string v1, "TwitterCore"

    invoke-direct {v0, p0, v1, p1, p2}, Lo/nu;-><init>(Lo/pq;Ljava/lang/String;Ljava/util/List;Lo/qr;)V

    sput-object v0, Lo/oe;->Sc:Lo/nu;

    .line 30
    return-void
.end method
