/**
 * Represents the current state during parsing
 */
export class ParseState {
    constructor(prefixes = [], stems = [], remainder = "") {
        this.prefixes = prefixes;
        this.stems = stems;
        this.remainder = remainder;
    }

    /**
     * Creates a new state with the same prefixes and stems
     */
    clone() {
        return new ParseState(
            [...this.prefixes],
            [...this.stems],
            this.remainder
        );
    }

    /**
     * Adds a prefix to the current state
     */
    addPrefix(prefix) {
        this.prefixes.push(prefix);
    }

    /**
     * Adds a stem to the beginning of the stems array
     * (since we're parsing from right to left)
     */
    addStem(stem) {
        this.stems.unshift(stem);
    }

    /**
     * Updates the remaining segment to parse
     */
    setRemainder(remainder) {
        this.remainder = remainder;
    }

    /**
     * Checks if this state has any stems
     */
    hasStem() {
        return this.stems.length > 0;
    }

    /**
     * Checks if this state has any prefixes
     */
    hasPrefix() {
        return this.prefixes.length > 0;
    }

    /**
     * Checks if there is any remaining text to parse
     */
    hasRemainder() {
        return this.remainder.length > 0;
    }

    /**
     * Convert to the format expected by the parser
     */
    toParseResult() {
        return {
            precedingStems: this.stems,
            prefixes: this.prefixes,
            unparsedRemainder: this.remainder
        };
    }
}
