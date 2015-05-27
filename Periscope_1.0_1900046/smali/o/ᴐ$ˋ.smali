.class public final Lo/ᴐ$ˋ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴐ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u02cb"
.end annotation


# instance fields
.field final synthetic fg:Lo/ᴐ;

.field private final fj:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J


# direct methods
.method private constructor <init>(Lo/ᴐ;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    .line 672
    iput-object p1, p0, Lo/ᴐ$ˋ;->fg:Lo/ᴐ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p2, p0, Lo/ᴐ$ˋ;->key:Ljava/lang/String;

    .line 674
    iput-wide p3, p0, Lo/ᴐ$ˋ;->sequenceNumber:J

    .line 675
    iput-object p5, p0, Lo/ᴐ$ˋ;->fj:[Ljava/io/File;

    .line 676
    iput-object p6, p0, Lo/ᴐ$ˋ;->lengths:[J

    .line 677
    return-void
.end method

.method synthetic constructor <init>(Lo/ᴐ;Ljava/lang/String;J[Ljava/io/File;[JLo/ᴛ;)V
    .locals 0

    .line 666
    invoke-direct/range {p0 .. p6}, Lo/ᴐ$ˋ;-><init>(Lo/ᴐ;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public ﺑ(I)Ljava/io/File;
    .locals 1

    .line 689
    iget-object v0, p0, Lo/ᴐ$ˋ;->fj:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method
