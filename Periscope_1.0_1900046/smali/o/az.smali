.class public Lo/az;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/az$if;
    }
.end annotation


# static fields
.field private static final GH:Lo/ᒰ$ˎ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14b0$\u02ce<Lo/x;>;"
        }
    .end annotation
.end field

.field private static final GI:Lo/ᒰ$ˋ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14b0$\u02cb<Lo/x;Lo/\u14b0$if$\u02ca;>;"
        }
    .end annotation
.end field

.field public static final GJ:Lo/ᒰ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14b0<Lo/\u14b0$if$\u02ca;>;"
        }
    .end annotation
.end field

.field public static Hr:Lo/aw;

.field public static Hs:Lo/ax;

.field public static Ht:Lo/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/ᒰ$ˎ;

    invoke-direct {v0}, Lo/ᒰ$ˎ;-><init>()V

    sput-object v0, Lo/az;->GH:Lo/ᒰ$ˎ;

    new-instance v0, Lo/ba;

    invoke-direct {v0}, Lo/ba;-><init>()V

    sput-object v0, Lo/az;->GI:Lo/ᒰ$ˋ;

    new-instance v0, Lo/ᒰ;

    sget-object v1, Lo/az;->GI:Lo/ᒰ$ˋ;

    sget-object v2, Lo/az;->GH:Lo/ᒰ$ˎ;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lo/ᒰ;-><init>(Lo/ᒰ$ˋ;Lo/ᒰ$ˎ;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lo/az;->GJ:Lo/ᒰ;

    new-instance v0, Lo/p;

    invoke-direct {v0}, Lo/p;-><init>()V

    sput-object v0, Lo/az;->Hr:Lo/aw;

    new-instance v0, Lo/s;

    invoke-direct {v0}, Lo/s;-><init>()V

    sput-object v0, Lo/az;->Hs:Lo/ax;

    new-instance v0, Lo/ac;

    invoke-direct {v0}, Lo/ac;-><init>()V

    sput-object v0, Lo/az;->Ht:Lo/bc;

    return-void
.end method

.method static synthetic Ȳ()Lo/ᒰ$ˎ;
    .locals 1

    sget-object v0, Lo/az;->GH:Lo/ᒰ$ˎ;

    return-object v0
.end method
