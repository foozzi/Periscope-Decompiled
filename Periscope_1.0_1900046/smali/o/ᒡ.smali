.class public Lo/ᒡ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ROOT:Ljava/util/Locale;

.field private static ᐦ:Ljava/lang/String;

.field private static ᒄ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/ᒡ;->ROOT:Ljava/util/Locale;

    .line 116
    const-string v0, "Arab"

    sput-object v0, Lo/ᒡ;->ᐦ:Ljava/lang/String;

    .line 117
    const-string v0, "Hebr"

    sput-object v0, Lo/ᒡ;->ᒄ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 2

    .line 76
    if-eqz p0, :cond_2

    sget-object v0, Lo/ᒡ;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/Ꭵ;->ˋ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/Ꭵ;->ˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    if-nez v1, :cond_0

    invoke-static {p0}, Lo/ᒡ;->ˊ(Ljava/util/Locale;)I

    move-result v0

    return v0

    .line 81
    :cond_0
    sget-object v0, Lo/ᒡ;->ᐦ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/ᒡ;->ᒄ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static ˊ(Ljava/util/Locale;)I
    .locals 2

    .line 103
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 110
    :goto_0
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
