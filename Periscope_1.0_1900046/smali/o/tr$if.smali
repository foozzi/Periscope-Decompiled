.class Lo/tr$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# static fields
.field private static final Zl:Lo/tr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lo/tr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/tr;-><init>(Lo/tr$1;)V

    sput-object v0, Lo/tr$if;->Zl:Lo/tr;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic dR()Lo/tr;
    .locals 1

    .line 29
    sget-object v0, Lo/tr$if;->Zl:Lo/tr;

    return-object v0
.end method
