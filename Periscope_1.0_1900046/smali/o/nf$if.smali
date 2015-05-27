.class Lo/nf$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# static fields
.field private static final QS:Lo/mt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lo/mt;

    invoke-direct {v0}, Lo/mt;-><init>()V

    sput-object v0, Lo/nf$if;->QS:Lo/mt;

    return-void
.end method

.method static synthetic by()Lo/mt;
    .locals 1

    .line 25
    sget-object v0, Lo/nf$if;->QS:Lo/mt;

    return-object v0
.end method
