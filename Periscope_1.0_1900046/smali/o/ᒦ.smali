.class public Lo/ᒦ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺭ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\ufead<TT;>;"
    }
.end annotation


# static fields
.field private static final jS:Lo/ﺭ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufead<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/ᒦ;

    invoke-direct {v0}, Lo/ᒦ;-><init>()V

    sput-object v0, Lo/ᒦ;->jS:Lo/ﺭ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ﱢ()Lo/ᒦ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>()Lo/\u14a6<TT;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lo/ᒦ;->jS:Lo/ﺭ;

    check-cast v0, Lo/ᒦ;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public ˊ(Lo/ڔ;II)Lo/ڔ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<TT;>;II)Lo/\u0694<TT;>;"
        }
    .end annotation

    .line 26
    return-object p1
.end method
