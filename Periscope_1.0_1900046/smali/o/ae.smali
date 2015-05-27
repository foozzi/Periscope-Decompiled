.class public final Lo/ae;
.super Ljava/lang/Object;


# static fields
.field public static final GH:Lo/ᒰ$ˎ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14b0$\u02ce<Lo/aq;>;"
        }
    .end annotation
.end field

.field public static final GI:Lo/ᒰ$ˋ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14b0$\u02cb<Lo/aq;Lo/ai;>;"
        }
    .end annotation
.end field

.field public static final GJ:Lo/ᒰ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14b0<Lo/ai;>;"
        }
    .end annotation
.end field

.field public static final GK:Lo/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/ᒰ$ˎ;

    invoke-direct {v0}, Lo/ᒰ$ˎ;-><init>()V

    sput-object v0, Lo/ae;->GH:Lo/ᒰ$ˎ;

    new-instance v0, Lo/af;

    invoke-direct {v0}, Lo/af;-><init>()V

    sput-object v0, Lo/ae;->GI:Lo/ᒰ$ˋ;

    new-instance v0, Lo/ᒰ;

    sget-object v1, Lo/ae;->GI:Lo/ᒰ$ˋ;

    sget-object v2, Lo/ae;->GH:Lo/ᒰ$ˎ;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lo/ᒰ;-><init>(Lo/ᒰ$ˋ;Lo/ᒰ$ˎ;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lo/ae;->GJ:Lo/ᒰ;

    new-instance v0, Lo/ap;

    invoke-direct {v0}, Lo/ap;-><init>()V

    sput-object v0, Lo/ae;->GK:Lo/ag;

    return-void
.end method
