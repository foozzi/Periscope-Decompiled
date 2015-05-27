.class public Lo/j;
.super Ljava/lang/Object;


# instance fields
.field private final Cg:Ljava/lang/String;

.field private final FU:Ljava/lang/String;

.field private final FV:Lo/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ab<Lo/u;>;"
        }
    .end annotation
.end field

.field private FW:Lo/l;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/ab<Lo/u;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/j;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lo/j;->FU:Ljava/lang/String;

    iput-object p4, p0, Lo/j;->FV:Lo/ab;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/j;->FW:Lo/l;

    iput-object p3, p0, Lo/j;->Cg:Ljava/lang/String;

    return-void
.end method

.method public static ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/ab;)Lo/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/ab<Lo/u;>;)Lo/j;"
        }
    .end annotation

    new-instance v0, Lo/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/ab;)V

    return-object v0
.end method
