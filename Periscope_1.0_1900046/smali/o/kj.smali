.class public abstract Lo/kj;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static NN:Lo/kq;

.field public static NO:Ljava/lang/String;

.field private static final NP:Lo/kq;

.field public static qa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/kk;

    invoke-direct {v0}, Lo/kk;-><init>()V

    sput-object v0, Lo/kj;->NP:Lo/kq;

    .line 34
    sget-object v0, Lo/kj;->NP:Lo/kq;

    sput-object v0, Lo/kj;->NN:Lo/kq;

    .line 35
    const-string v0, "Unknown"

    sput-object v0, Lo/kj;->NO:Ljava/lang/String;

    .line 36
    const-string v0, "Unknown"

    sput-object v0, Lo/kj;->qa:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
