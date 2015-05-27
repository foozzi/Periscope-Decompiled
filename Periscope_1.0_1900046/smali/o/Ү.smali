.class public Lo/Ү;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ғ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u0493<TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final lD:Lo/Ү;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u04ae<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/Ү;

    invoke-direct {v0}, Lo/Ү;-><init>()V

    sput-object v0, Lo/Ү;->lD:Lo/Ү;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ٳ()Lo/ғ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:Ljava/lang/Object;>()Lo/\u0493<TZ;TZ;>;"
        }
    .end annotation

    .line 15
    sget-object v0, Lo/Ү;->lD:Lo/Ү;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, ""

    return-object v0
.end method

.method public ˏ(Lo/ڔ;)Lo/ڔ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<TZ;>;)Lo/\u0694<TZ;>;"
        }
    .end annotation

    .line 20
    return-object p1
.end method
